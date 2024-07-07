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

type alias Weight =
  { date : Time.Posix
  , weight : Float
  }

type alias Bp =
  { date : Time.Posix
  , diastolic : Int
  , systolic : Int
  }

mkdate : Int -> Month -> Int -> Time.Posix
mkdate y m d = partsToPosix utc (Parts y m d 0 0 0 0)