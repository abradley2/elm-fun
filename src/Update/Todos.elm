module Update.Todos exposing (todos)

import Http
import Task exposing (Task)
import Json.Decode exposing (..)
import Model exposing (Model, Todo)
import Action exposing (Action (..))

addTodo : Task Http.Error Int
addTodo =
    (Http.post
        ("id" := Json.Decode.int)
        "http://localhost:3000/todos"
        (Http.string """{ 
            "title": "New Todo",
            "completed": false
        }""")
    )

todos : Action -> (Model, List (Cmd Action)) -> (Model, List (Cmd Action))
todos action params =
    case action of

        Todos'ADD_TODO -> 
            let (model, commands) = params
            in (
                model
                , (Task.perform HttpError Todos'ADD_TODO'done addTodo :: commands)
            )

        Todos'ADD_TODO'done createdId ->
            let (model, commands) = params
            in ({
                model | 
                todos = {
                    id = createdId
                    , title = "New Todo " ++ toString createdId
                    , completed = False
                } :: model.todos
            }, commands)

        _ -> params