module Main (..) where
import Model exposing (model)
import View exposing (view)
import Action exposing (Action (..))
import Html.App

import reducers.Todos exposing (todos)

update : Action -> Model -> Model
update action model =
    todos action model
    >>


main : Program Never
main =
    Html.App.program
        { view = view
        , update = update
        , model = model
        }
