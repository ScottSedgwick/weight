module Main exposing (..)

import Browser
import Time
import Html exposing (..)
import Html.Attributes exposing ( attribute, class, id, style )
import Html.Events exposing (..)
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

type Msg = ChangeTab TabName

type alias Model =
  { weights: List (LineChart.Series LinePoint)
  , bps: List (LineChart.Series LinePoint)
  , activeTab : TabName
  }

init : flags -> (Model, Cmd Msg)
init _ =
  ( { weights = weightData
    , activeTab = WeightTab
    , bps = bpData
    }
  , Cmd.none)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    ChangeTab n -> ( { model | activeTab = n }, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions _ = Sub.none

main : Program () Model Msg
main = Browser.element { init = init, update = update, view = view, subscriptions = subscriptions }

view : Model -> Html Msg
view model =
  div []
    [ node "main" [ class "page-content", attribute "aria-label" "Content" ] 
      [ div [ class "wrapper" ]
        (div [ class "tab" ] (List.map (tabButton model.activeTab) allTabs) :: ( List.map (tabBody model model.activeTab) allTabs ))
      ]
    ]

tabButton : TabName -> TabName -> Html Msg
tabButton a n = 
  let
    c = if (a == n) then " active" else ""
  in
    button [ class ("tablink tablinks" ++ c), onClick (ChangeTab n) ] [ text (tabName n) ]

tabBody : Model -> TabName -> TabName -> Html Msg
tabBody model a n = 
  let
    attrs = if (a == n) then [ id (tabName n), class "tabcontent", style "display" "block" ] else [ id (tabName n), class "tabcontent" ]
    tabView = 
      case n of
        WeightTab -> weightChart model.weights
        BpTab -> bpChart model.bps
  in
    div attrs [tabView]

weightChart : List (LineChart.Series LinePoint) -> Html.Html msg
weightChart data =
  LineChart.viewCustom
    { x = xAxisConfigWeight
    , y = Axis.full 400 "Weight (kg)" .yvalue
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

xAxisConfigWeight : Axis.Config LinePoint msg
xAxisConfigWeight = Axis.time Time.utc 800 "Date" (\x -> toFloat (Time.posixToMillis x.date))

bpChart : List (LineChart.Series LinePoint) -> Html.Html msg
bpChart data =
  LineChart.viewCustom
    { x = xAxisConfigBp
    , y = yAxisConfigBp
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

xAxisConfigBp : Axis.Config LinePoint msg
xAxisConfigBp = Axis.time Time.utc 800 "Date" (\x -> toFloat (Time.posixToMillis x.date))

yAxisConfigBp : Axis.Config LinePoint msg
yAxisConfigBp = Axis.full 400 "mmHg" (\x -> x.yvalue)
