module Main exposing (..)

import Time
import Html
import LineChart
import LineChart.Junk as Junk
import LineChart.Area as Area
import LineChart.Axis as Axis
import LineChart.Junk as Junk
import LineChart.Dots as Dots
import LineChart.Grid as Grid
import LineChart.Dots as Dots
import LineChart.Line as Line
import LineChart.Events as Events
import LineChart.Legends as Legends
import LineChart.Container as Container
import LineChart.Interpolation as Interpolation
import LineChart.Axis.Intersection as Intersection
import LineChart.Colors as Colors

import Model exposing(..)
import Data exposing (..)

main : Html.Html msg
main = chart

chart : Html.Html msg
chart =
  LineChart.viewCustom
    { x = xAxisConfig
    , y = Axis.full 400 "Weight (kg)" .weight
    , container = Container.styled "line-chart-1" [ ("width", "1300px") ]
    , interpolation = Interpolation.monotone
    , intersection = Intersection.default
    , legends = Legends.default
    , events = Events.default
    , junk = Junk.default
    , grid = Grid.lines 0.5 Colors.black
    , area = Area.default
    , line = Line.default
    , dots = Dots.default
    }
    data

xAxisConfig : Axis.Config Weight msg
xAxisConfig = Axis.time Time.utc 800 "Date" (\x -> toFloat (Time.posixToMillis x.date))
