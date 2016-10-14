module Model exposing (Model, model)

type alias Model =
    { count : Int
    , message : String
    }

model : Model
model =
    { count = 1
    , message = "Hello world"
    }

