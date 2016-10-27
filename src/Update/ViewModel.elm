module Update.ViewModel exposing (viewModel)
import Dict
import Model exposing (Model, ViewModel, Dropdown, Accordion)
import Action exposing (Action (..))

handleDropdownSelect : ViewModel -> String -> String -> ViewModel
handleDropdownSelect viewModel key selected =
    {
        viewModel |
        dropdownSelects =
            let dropdownSelect = 
                case Dict.get key viewModel.dropdownSelects of
                    Just a -> a
                    Nothing -> {open = False, selected = selected}
            in
                Dict.insert key { dropdownSelect |
                    selected = selected
                    , open = False
                } viewModel.dropdownSelects
       
    }


handleToggleDropdown : ViewModel -> String -> ViewModel
handleToggleDropdown viewModel key =
    {
        viewModel |
        dropdowns = 
            Dict.insert key {
                open = not (
                    case Dict.get key viewModel.dropdowns of
                        Just dropdown -> dropdown.open
                        Nothing -> False
                )
            } viewModel.dropdowns
    }

viewModel : Action -> (Model, List (Cmd Action)) -> (Model, List (Cmd Action))
viewModel action params =
    case action of 

        ViewModel'TOGGLE_DROPDOWN key ->
            let (model, commands) = params
            in ({ model |
                viewModel = (handleToggleDropdown model.viewModel key)
            }, commands)

        _ -> params