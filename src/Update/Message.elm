module Update.Message exposing (message)

import Model exposing (Model)
import Action exposing (Action (..))

message : Action -> (Model, List (Cmd Action)) -> (Model, List (Cmd Action))
message action params =
    case action of

        Message'EDIT_MESSAGE newMessage -> 
            let (model, commands) = params
            in ({
                model |
                message = newMessage
            }, commands)

        _ -> params