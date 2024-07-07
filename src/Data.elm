module Data exposing (weightData)

import LineChart
import LineChart.Colors as Colors
import LineChart.Dots as Dots

import Model exposing (Weight)
import Data.Meagen as M
import Data.Phoebe as P
import Data.Scott as S
import Data.Zoe as Z


weightData : List (LineChart.Series Weight)
weightData = 
  [ LineChart.line Colors.goldLight Dots.square "Scott" S.weight
  , LineChart.line Colors.greenLight Dots.plus "Meagen" M.weight
  , LineChart.line Colors.blueLight Dots.diamond "Phoebe" P.weight
  , LineChart.line Colors.purpleLight Dots.circle "Zoe" Z.weight
  ]