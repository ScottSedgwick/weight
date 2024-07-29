module Data exposing (BpLine, bpData, weightData)

import LineChart
import LineChart.Colors as Colors
import LineChart.Dots as Dots
import Time

import Model exposing (LinePoint, diastolics, systolics, weights)
import Data.Meagen as M
import Data.Phoebe as P
import Data.Scott as S
import Data.Zoe as Z


weightData : List (LineChart.Series LinePoint)
weightData = 
  [ LineChart.line Colors.goldLight Dots.square "Scott" (weights S.data)
  , LineChart.line Colors.greenLight Dots.plus "Meagen" (weights M.data)
  , LineChart.line Colors.blueLight Dots.diamond "Phoebe" (weights P.data)
  , LineChart.line Colors.purpleLight Dots.circle "Zoe" (weights Z.data)
  ]

type alias BpLine =
  { date : Time.Posix
  , pressure : Int
  }

bpData : List (LineChart.Series LinePoint)
bpData =
  [ LineChart.line Colors.goldLight Dots.square "Scott (Dia)" (diastolics S.data)
  , LineChart.line Colors.gold Dots.square "Scott (Sys)" (systolics S.data)
  ]