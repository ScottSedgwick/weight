module Data.Zoe exposing (..)

import Time exposing (Month(..))
import Model exposing (Weight, mkdate)

weight : List Weight
weight = 
  [ Weight (mkdate 2022 Feb  5)  73.0
  , Weight (mkdate 2022 Feb 19)  73.7
  , Weight (mkdate 2022 Mar  6)  74.7
  , Weight (mkdate 2022 Aug 27)  80.2
  , Weight (mkdate 2023 Apr  3)  82.2
  , Weight (mkdate 2024 Jul  7)  76.1
  , Weight (mkdate 2024 Jul 14)  73.8
  ]