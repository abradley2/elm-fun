import Model exposing (model)
import View exposing (view)
import Model exposing (Model, model)
import Action exposing (Action (..))
import Html.App

import Update.Count exposing (count)
import Update.Message exposing (message)

update : Action -> Model -> (Model, Cmd Action)
update action model =
    (
        model 
            |> count action
            >> message action
        , Cmd.none
    )

subscriptions : Model -> Sub Action
subscriptions model =
    Sub.batch
        []

main : Program Never
main =
    Html.App.program
        { init = ( model, Cmd.none )
        , view = view
        , update = update
        , subscriptions = (always Sub.none)
        }
