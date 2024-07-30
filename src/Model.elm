module Model exposing (..)

import Time exposing (Month, utc)
import Time.Extra exposing (Parts, partsToPosix)
import Color exposing (Color)
import LineChart.Dots as Dots

type TabName
  = WeightTab
  | BpTab

allTabs : List TabName
allTabs = [WeightTab, BpTab]

tabName : TabName -> String
tabName t =
  case t of
    WeightTab -> "Weight"
    BpTab -> "Blood Pressure"

type alias Bp =
  { diastolic : Int
  , systolic : Int
  }

type alias Pulse =
  { pulse : Int }

type alias DataPoint =
  { date : Time.Posix
  , datum : Datum
  }

type alias LinePoint =
  { date : Time.Posix
  , yvalue : Float
  }

type Datum = W Float
           | B Bp
           | P Pulse

weights : List DataPoint -> List LinePoint
weights xs = List.sortBy (\x -> Time.posixToMillis x.date) (List.filterMap maybeW xs)

maybeW : DataPoint -> Maybe LinePoint
maybeW x = 
    case x.datum of
      (W w) -> Just { date = x.date, yvalue = w }
      _     -> Nothing

mkWeight : Int -> Month -> Int -> Float -> DataPoint
mkWeight y m d w = 
  { date = mkdate y m d
  , datum = W w
  }

diastolics : List DataPoint -> List LinePoint
diastolics xs = List.sortBy (\x -> Time.posixToMillis x.date) (List.filterMap maybeDias xs)

maybeDias : DataPoint -> Maybe LinePoint
maybeDias x = 
  case x.datum of
    (B b) -> Just { date = x.date, yvalue = toFloat b.diastolic }
    _     -> Nothing

systolics : List DataPoint-> List LinePoint
systolics xs = List.sortBy (\x -> Time.posixToMillis x.date) (List.filterMap maybeSyss xs)

maybeSyss : DataPoint -> Maybe LinePoint
maybeSyss x = 
  case x.datum of
    (B b) -> Just { date = x.date, yvalue = toFloat b.systolic }
    _     -> Nothing

mkBp : Int -> Month -> Int -> Int -> Int -> DataPoint
mkBp y m d dia sys = 
  { date = mkdate y m d
  , datum = B { diastolic = dia, systolic = sys }
  }

mkdate : Int -> Month -> Int -> Time.Posix
mkdate y m d = partsToPosix utc (Parts y m d 0 0 0 0)

mkDatum : Int -> Month -> Int -> Maybe Float -> Maybe (Int, Int) -> Maybe Int -> List DataPoint
mkDatum y m d mWeight mBp mPulse = 
  let
    dt = mkdate y m d
    weight = case mWeight of
               Nothing -> []
               Just w  -> [{ date = dt, datum = W w }]
    bp = case mBp of
          Nothing -> []
          Just (dia,sys) -> [{ date = dt, datum = B { diastolic = dia, systolic = sys }}]
    pulse = case mPulse of
              Nothing -> []
              Just p  -> [{ date = dt, datum = P { pulse = p }}]
  in
    weight ++ bp ++ pulse

type alias Person =
  { name : String
  , color1 : Color
  , color2 : Color
  , dot : Dots.Shape
  , data : List DataPoint
  }
