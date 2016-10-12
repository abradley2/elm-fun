module View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (Model)
import Action exposing (Action (..))

view : Model -> Html Action
view model =
    div [class "container"]
        [ h3 [] [text "Hello World!"]
        , button [onClick INCREMENT] []
        ]
