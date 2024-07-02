module Model exposing (..)

import Time exposing (Month, utc)
import Time.Extra exposing (Parts, partsToPosix)

type alias Weight =
  { date : Time.Posix
  , weight : Float
  }

mkdate : Int -> Month -> Int -> Time.Posix
mkdate y m d = partsToPosix utc (Parts y m d 0 0 0 0)