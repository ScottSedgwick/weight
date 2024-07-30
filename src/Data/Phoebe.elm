module Data.Phoebe exposing (phoebe)

import LineChart.Colors as Colors
import LineChart.Dots as Dots
import Time exposing (Month(..))
import Model exposing (DataPoint, mkWeight)
import Model exposing (Person)

phoebe : Person
phoebe = 
  { name = "Phoebe"
  , color1 = Colors.blueLight
  , color2 = Colors.blue
  , dot = Dots.diamond
  , data = data
  }

data : List DataPoint
data = 
  [ mkWeight 2022 Jan 10  84.3
  , mkWeight 2022 Jan 22  83.4
  , mkWeight 2022 Feb  2  82.7
  , mkWeight 2022 Feb  7  83.2
  , mkWeight 2022 Feb 16  83.5
  , mkWeight 2022 Mar  7  83.3
  , mkWeight 2022 Mar 18  81.2
  , mkWeight 2022 Mar 29  83.1
  , mkWeight 2022 Apr  8  82.1
  , mkWeight 2022 Apr 21  82.1
  , mkWeight 2022 Jun  3  78.5
  , mkWeight 2022 Jun 19  81.6
  , mkWeight 2022 Jul 23  77.3
  , mkWeight 2022 Aug  6  77.5
  , mkWeight 2022 Oct 16  79.1
  , mkWeight 2022 Nov 19  81.3
  , mkWeight 2022 Dec 11  81.7
  , mkWeight 2023 Jan 26  85.1
  , mkWeight 2023 Feb 15  84.0
  , mkWeight 2024 Jun 24  99.7
  , mkWeight 2024 Jul  3  96.3
  , mkWeight 2024 Jul  7  93.9
  , mkWeight 2024 Jul 14  93.6
  , mkWeight 2024 Jul 21  92.7
  , mkWeight 2024 Jul 28  92.7
  ]