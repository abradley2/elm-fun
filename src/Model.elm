module Model exposing (Model, model)

type alias Model =
    { count : Int
    , name : String
    }

model : Model
model =
    { count = 1
    , name = "Hello world"
    }

