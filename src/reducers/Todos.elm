module Todos exposing (todos)

import Model exposing (Model, model)
import Action exposing (Action (
    CREATE_TODO,
    EDIT_TODO,
    REMOVE_TODO
))

todos action model =
    case Action of
        CREATE_TODO -> model
