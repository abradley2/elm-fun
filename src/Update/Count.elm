module Update.Count exposing (count)

import Model exposing (Model)
import Action exposing (Action (..))

count : Action -> Model -> Model
count action model =
    case action of

        Count'INCREMENT ->
            {
                model | 
                count = model.count + 1
            }

        Count'DECREMENT -> 
            {
                model |
                count = model.count - 1
            }

        _ -> model