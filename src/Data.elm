module Data exposing (bpData, weightData)

import LineChart

import Model exposing (LinePoint, Person, diastolics, systolics, weights)
import Data.Meagen exposing (meagen)
import Data.Phoebe exposing (phoebe)
import Data.Scott exposing (scott)
import Data.Zoe exposing (zoe)


weightData : List (LineChart.Series LinePoint)
weightData = List.filterMap weightM [scott, meagen, phoebe, zoe]

weightM : Person -> Maybe (LineChart.Series LinePoint)
weightM p =
  case (weights p.data) of
    [] -> Nothing
    xs -> Just (LineChart.line p.color1 p.dot p.name xs)

bpData : List (LineChart.Series LinePoint)
bpData = List.concat (List.filterMap bpM [scott, meagen, phoebe, zoe])

bpM : Person -> Maybe (List (LineChart.Series LinePoint))
bpM p =
  case (diastolics p.data) of
    [] -> Nothing
    _  -> Just [ LineChart.line p.color1 p.dot (p.name ++ " (dia)") (diastolics p.data), 
                 LineChart.line p.color2 p.dot (p.name ++ " (sys)") (systolics p.data)
               ]