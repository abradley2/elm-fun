module Model exposing (model, Model, Todo)

type alias Todo =
    { id : Int
    , title : String
    , completed: Bool 
    }

type alias Model =
    { count : Int
    , message : String
    , todos : List Todo
    }

model : Model
model =
    { count = 1
    , message = "Hello world"
    , todos = []
    }

