import Model exposing (model)
import View exposing (view)
import Model exposing (Model, model)
import Action exposing (Action (..))
import Html.App

import Update.Message exposing (message)
import Update.Count exposing (count)
import Update.Todos exposing (todos)
import Update.ViewModel exposing (viewModel)

update : Action -> Model -> (Model, Cmd Action)
update action model =
    let (newModel, commands) = 
        (model, [])
            |> viewModel action
            >> count action
            >> message action
            >> todos action
    in
        (newModel, Cmd.batch commands)
        

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
