module Data exposing (weightData)

import LineChart
import LineChart.Colors as Colors
import LineChart.Dots as Dots

import Model exposing (Weight)
import Data.Meagen exposing (meagen)
import Data.Scott exposing (scott)


weightData : List (LineChart.Series Weight)
weightData = 
  [ LineChart.line Colors.blueLight Dots.square "Scott" scott
  , LineChart.line Colors.pinkLight Dots.plus "Meagen" meagen
  -- , LineChart.line Colors.goldLight Dots.diamond "Phoebe" phoebe
  ]