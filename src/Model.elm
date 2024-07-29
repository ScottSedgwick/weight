module Model exposing (..)

import Time exposing (Month, utc)
import Time.Extra exposing (Parts, partsToPosix)

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

weights : List DataPoint -> List LinePoint
weights = List.filterMap maybeW

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

diastolics : List DataPoint-> List LinePoint
diastolics = List.filterMap maybeDias

maybeDias : DataPoint -> Maybe LinePoint
maybeDias x = 
  case x.datum of
    (B b) -> Just { date = x.date, yvalue = toFloat b.diastolic }
    _     -> Nothing

systolics : List DataPoint-> List LinePoint
systolics = List.filterMap maybeSyss

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

