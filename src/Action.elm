module Action exposing (..)

import Http exposing (Error)

type Action 
    = Called
    | Count'INCREMENT
    | Count'DECREMENT
    | Message'EDIT_MESSAGE String
    | Message'GET_PLANET
    | Message'GET_PLANET'SUCCESS String
    | Message'GET_PLANET'ERROR Error