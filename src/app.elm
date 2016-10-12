import Debug exposing (log)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Html.App

type Msg
    = Increment
    | Decrement

model =
    { count = 1
    , name = "Hello world"
    }

update msg model =
    case msg of
        Increment -> { model |
            count = model.count + 1
        }
        Decrement -> { model |
            count = model.count - 1
        }

view model =
    div [class "container"]
        [ div [class "alert alert-info"] [text (toString model.count)]
        , button [class "btn btn-primary",  onClick Increment] [text "+"]
        , button [class "btn btn-danger", onClick Decrement] [text "-"]
        ]

main =
    Html.App.beginnerProgram
        { view = view
        , update = update
        , model = model
        }
