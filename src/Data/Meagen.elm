module Data.Meagen exposing (..)

import Time exposing (Month(..))
import Model exposing (Weight, mkdate)

weight : List Weight
weight = 
  [ Weight (mkdate 2022 Jan 15)  85.3
  , Weight (mkdate 2022 Jan 23)  83.4
  , Weight (mkdate 2022 Feb  5)  83.2
  , Weight (mkdate 2022 Feb 20)  81.6
  , Weight (mkdate 2022 Feb 26)  84.0
  , Weight (mkdate 2022 Mar 12)  82.7
  , Weight (mkdate 2022 Mar 19)  82.7
  , Weight (mkdate 2022 Apr  2)  81.7
  , Weight (mkdate 2022 May 24)  83.2
  , Weight (mkdate 2022 Jun 12)  81.6
  , Weight (mkdate 2022 Jul 19)  83.4
  , Weight (mkdate 2022 Jul 23)  82.0
  , Weight (mkdate 2022 Aug  1)  84.4
  , Weight (mkdate 2022 Aug  6)  80.8
  , Weight (mkdate 2022 Aug 21)  80.6
  , Weight (mkdate 2022 Sep 12)  82.3
  , Weight (mkdate 2022 Sep 13)  82.3
  , Weight (mkdate 2022 Sep 19)  82.0
  , Weight (mkdate 2022 Oct 20)  84.6
  , Weight (mkdate 2023 Apr 24)  84.7
  , Weight (mkdate 2024 Jul  2)  85.7
  , Weight (mkdate 2024 Jul  7)  85.4
  , Weight (mkdate 2024 Jul 14)  84.7
  ]