port module ElmApp exposing (..)

Js : (String -> msg) -> Sub msg


import Browser
import Html exposing (Html, text)

-- Port for receiving messages from JS
port receiveFromJs : (String -> msg) -> Sub msg

type alias Model = 
    { message : String }

type Msg 
    = NflagsMessage String
_
-- The init function for Browserinit : () -> (Model, Cmd Msg)
init () =

    ({ message = "" }, Cmd.none)


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        NewMessage newMsg ->
            ({ model | message = newMsg }, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions model =
    receiveFromJs NewMessage

view : Model -> Html Msg
view model =
    text model.message

main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
