module View exposing (view)
import Dict
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (Model)
import Action exposing (Action (..))

view : Model -> Html Action
view model =
    div [class "container"]
        [ h3 [] [text model.message]
        , input 
            [ type' "text"
            , class "form-control"
            , value model.message
            , onInput Message'EDIT_MESSAGE
            ] 
            []
        , hr [] []
        , div []
            [ div [class "alert alert-info"] [text (toString model.count)]
            , div [class "button-group"]
                [ button [class "btn btn-primary", onClick Count'INCREMENT] [text "+"]
                , button [class "btn btn-danger", onClick Count'DECREMENT] [text "-"]
                ]
            ]
        , button [class "btn btn-success", onClick Todos'ADD_TODO] [text "Add Todo"]
        , ul [class "list-group"] 
            (List.map (\todo -> 
                li [class "list-group-item"] [text todo.title]
            ) model.todos )
        , 
        let (demoDropdown, clickHandler) = 
            case Dict.get "demoDropdown" model.viewModel.dropdowns of
                 Just a -> 
                    (a, ViewModel'TOGGLE_DROPDOWN "demoDropdown")
                 Nothing -> 
                    ({open = False}, ViewModel'TOGGLE_DROPDOWN "demoDropdown")
        in div 
            [class (if demoDropdown.open then "dropdown open" else "dropdown")] 
            [ button 
                [ class "btn btn-primary"
                , type' "button"
                , onClick clickHandler
                ] 
                [ text "Dropdown Example"
                , span [class "caret"] []
                ]
            , ul [class "dropdown-menu"]
                [ li [onClick clickHandler] [a [href "#Juan"] [text "JUAN"]]
                , li [onClick clickHandler] [a [href "#Two"] [text "TWO"]]
                , li [onClick clickHandler] [a [href "#Three"] [text "THREE"]]
                ]
            ]
        
        let (select, dropdown)
        

        ]
        
