module Update.Message exposing (message)

import Model exposing (Model)
import Action exposing (Action (..))

message : Action -> Model -> Model
message action model =
    case action of

        Message'EDIT_MESSAGE newMessage -> 
            {
                model |
                message = newMessage
            }

        _ -> model