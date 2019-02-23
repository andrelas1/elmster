module Main exposing (main)

import Browser
import Html exposing (Html, div, p, text)



-- Model


type alias Model =
    { loading : Bool
    , title : String
    }


init : Model
init =
    { loading = False, title = "HELLO" }



-- Update


type Msg
    = Start


update : Msg -> Model -> Model
update msg model =
    case msg of
        Start ->
            model



-- View


view : Model -> Html Msg
view model =
    p [] [ text model.title ]


main =
    Browser.sandbox { init = init, update = update, view = view }
