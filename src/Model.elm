module Model exposing (..)

import Dict

type alias Dropdown = 
    { open : Bool }

type alias Accordion = 
    { panels : List String
    , openedPanel : String
    }

type alias DropdownSelect =
    { open : Bool
    , selected : String
    }

type alias ViewModel =
    { dropdowns : Dict.Dict String Dropdown
    , accordions : Dict.Dict String Accordion
    , dropdownSelects : Dict.Dict String DropdownSelect
    }

type alias Todo =
    { id : Int
    , title : String
    , completed: Bool 
    }

type alias Model =
    { count : Int
    , message : String
    , todos : List Todo
    , viewModel : ViewModel
    }

model : Model
model =
    { count = 1
    , message = "Hello world"
    , todos = []
    , viewModel = 
        { dropdowns = Dict.empty
        , accordions = Dict.empty
        , dropdownSelects = Dict.empty
        }
    }

