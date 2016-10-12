import Debug exposing (log)
import Html exposing (..)
import Html.Events exposing (..)
import Html.App

type Msg
    = Increment
    | Decrement
    | Other

model =
    { count = 1
    , bool = False
    }

test = "a message"

update msg model =
    case log "message = " msg of
        Increment -> model
        Decrement -> model

view model =
    div []
        [ span [] [text "Hello World"]
        , button [onClick Other] [text "+"]
        ]


main =
    Html.App.beginnerProgram
        { view = view
        , update = update
        , model = model
        }
