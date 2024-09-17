module Data.Scott exposing (scott)

import LineChart.Colors as Colors
import LineChart.Dots as Dots
import Time exposing (Month(..))
import Model exposing (DataPoint, mkDatum, mkWeight, mkBp)
import Model exposing (Person)

scott : Person
scott = 
  { name = "Scott"
  , color1 = Colors.goldLight
  , color2 = Colors.gold
  , dot = Dots.square
  , data = data
  }

data : List DataPoint
data = 
  [ mkWeight 2022 Jan  8 102.8
  , mkWeight 2022 Jan 15 101.1
  , mkWeight 2022 Jan 22 100.4
  , mkWeight 2022 Feb  1 100.3
  , mkWeight 2022 Feb  5  97.6
  , mkWeight 2022 Feb 12  99.5
  , mkWeight 2022 Feb 19  97.4
  , mkWeight 2022 Feb 26  96.8
  , mkWeight 2022 Mar  7  98.4
  , mkWeight 2022 Mar 12  96.9
  , mkWeight 2022 Mar 19  96.9
  , mkWeight 2022 Mar 29  96.7
  , mkWeight 2022 Apr  2  95.7
  , mkWeight 2022 Apr  9  96.1
  , mkWeight 2022 Apr 23  97.1
  , mkWeight 2022 May  1  96.9
  , mkWeight 2022 May 14  96.6
  , mkWeight 2022 May 21  96.2
  , mkWeight 2022 May 28  94.6
  , mkWeight 2022 Jun 12  94.1
  , mkBp 2022 Nov  2 118 70
  , mkWeight 2023 Feb  4  95.1
  , mkWeight 2024 Jul  2 101.7
  ] ++ List.concat
  [ mkDatum 2022 Jun 18 (Just  96.0) (Just (126, 74)) Nothing
  , mkDatum 2022 Jun 27 (Just  93.4) (Just (124, 79)) Nothing
  , mkDatum 2022 Jul  2 (Just  94.4) (Just (126, 83)) Nothing
  , mkDatum 2022 Jul 17 (Just  93.6) (Just (122, 75)) Nothing
  , mkDatum 2022 Jul 23 (Just  94.1) (Just (123, 75)) Nothing
  , mkDatum 2022 Aug  6 (Just  92.8) (Just (127, 76)) Nothing
  , mkDatum 2022 Aug 13 (Just  92.4) (Just (127, 77)) Nothing
  , mkDatum 2022 Aug 20 (Just  93.0) (Just (113, 75)) Nothing
  , mkDatum 2022 Aug 27 (Just  91.5) (Just (119, 78)) Nothing
  , mkDatum 2022 Sep  3 (Just  91.0) (Just (111, 67)) Nothing
  , mkDatum 2022 Sep 11 (Just  91.1) (Just (119, 68)) Nothing
  , mkDatum 2022 Oct 10 (Just  91.7) (Just (130, 73)) Nothing
  , mkDatum 2022 Oct 15 (Just  91.0) (Just (115, 69)) Nothing
  , mkDatum 2022 Oct 20 (Just  91.4) (Just (121, 66)) Nothing
  , mkDatum 2022 Nov 19 (Just  93.7) (Just (120, 71)) Nothing
  , mkDatum 2022 Dec  3 (Just  94.1) (Just (121, 72)) Nothing
  , mkDatum 2023 Jan  1 (Just  96.3) (Just (133, 79)) Nothing
  , mkDatum 2023 Jan 22 (Just  94.8) (Just (130, 76)) Nothing
  , mkDatum 2023 Apr  2 (Just  97.4) (Just (122, 73)) Nothing
  , mkDatum 2024 Jan 20 (Just  99.2) (Just (124, 79)) Nothing
  , mkDatum 2024 Jun 21 (Just 102.2) (Just (136, 82)) Nothing
  , mkDatum 2024 Jul  3 (Just  98.9) (Just (113, 71)) Nothing
  , mkDatum 2024 Jul  7 (Just  98.2) (Just (110, 69)) Nothing
  , mkDatum 2024 Jul 14 (Just  96.1) (Just (116, 74)) Nothing
  , mkDatum 2024 Jul 21 (Just  97.1) (Just (124, 75)) Nothing
  , mkDatum 2024 Jul 28 (Just  94.6) (Just (126, 75)) Nothing
  , mkDatum 2024 Aug  4 (Just  94.6) Nothing          Nothing
  , mkDatum 2024 Aug 11 (Just  95.0) Nothing          Nothing
  , mkDatum 2024 Aug 18 (Just  95.1) Nothing          Nothing
  , mkDatum 2024 Sep 15 (Just  93.6) Nothing          Nothing
  ]