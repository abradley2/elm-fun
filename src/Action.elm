module Action exposing (..)

import Http
import Model exposing (Todo)

type Action 
    = HttpError Http.Error
    | Count'INCREMENT
    | Count'DECREMENT
    | Message'EDIT_MESSAGE String
    | Todos'ADD_TODO
    | Todos'ADD_TODO'done Int
    | Todos'EDIT_TODO Todo
    | Todos'EDIT_TODO'done Todo