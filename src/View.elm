module View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (Model)
import Action exposing (Action (..))

view : Model -> Html Action
view model =
    div [class "container"]
        [ h3 [] [text model.message]
        , input 
            [ type' "text"
            , value model.message
            , onInput Message'EDIT_MESSAGE
            ] 
            []
        , hr [] []
        , div []
            [ div [class "alert alert-info"] [text (toString model.count)]
            , div [class "button-group"]
                [ button [class "btn btn-primary", onClick Count'INCREMENT] [text "+"]
                , button [class "btn btn-danger", onClick Count'DECREMENT] [text "-"]
                ]
            ]
        ]
