module Update.Count exposing (count)

import Model exposing (Model)
import Action exposing (Action (..))

count : Action -> (Model, List (Cmd Action)) -> (Model, List (Cmd Action))
count action params =
    case action of

        Count'INCREMENT ->
            let (model, commands) = params
            in ({
                model | 
                count = model.count + 1
            }, commands)

        Count'DECREMENT -> 
            let (model, commands) = params
            in ({
                model | 
                count = model.count - 1
            }, commands)

        _ -> params