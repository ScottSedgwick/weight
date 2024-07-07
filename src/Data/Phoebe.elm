module Data.Phoebe exposing (..)

import Time exposing (Month(..))
import Model exposing (Weight, mkdate)

weight : List Weight
weight = 
  [ Weight (mkdate 2022 Jan 10)  84.3
  , Weight (mkdate 2022 Jan 22)  83.4
  , Weight (mkdate 2022 Feb  2)  82.7
  , Weight (mkdate 2022 Feb  7)  83.2
  , Weight (mkdate 2022 Feb 16)  83.5
  , Weight (mkdate 2022 Mar  7)  83.3
  , Weight (mkdate 2022 Mar 18)  81.2
  , Weight (mkdate 2022 Mar 29)  83.1
  , Weight (mkdate 2022 Apr  8)  82.1
  , Weight (mkdate 2022 Apr 21)  82.1
  , Weight (mkdate 2022 Jun  3)  78.5
  , Weight (mkdate 2022 Jun 19)  81.6
  , Weight (mkdate 2022 Jul 23)  77.3
  , Weight (mkdate 2022 Aug  6)  77.5
  , Weight (mkdate 2022 Oct 16)  79.1
  , Weight (mkdate 2022 Nov 19)  81.3
  , Weight (mkdate 2022 Dec 11)  81.7
  , Weight (mkdate 2023 Jan 26)  85.1
  , Weight (mkdate 2023 Feb 15)  84.0
  , Weight (mkdate 2024 Jun 24)  99.7
  , Weight (mkdate 2024 Jul  3)  96.3
  , Weight (mkdate 2024 Jul  7)  93.9
  ]