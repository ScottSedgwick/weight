module Data.Zoe exposing (..)

import Time exposing (Month(..))
import Model exposing (DataPoint, mkWeight)

data : List DataPoint
data = 
  [ mkWeight 2022 Feb  5  73.0
  , mkWeight 2022 Feb 19  73.7
  , mkWeight 2022 Mar  6  74.7
  , mkWeight 2022 Aug 27  80.2
  , mkWeight 2023 Apr  3  82.2
  , mkWeight 2024 Jul  7  76.1
  , mkWeight 2024 Jul 14  73.8
  , mkWeight 2024 Jul 21  72.9
  , mkWeight 2024 Jul 28  72.8
  ]