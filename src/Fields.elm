module Fields exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (Attribute, Html, button, div, input, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onInput)



-- MAIN


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
    { content : String
    , counter : Int
    }


init : Model
init =
    { content = ""
    , counter = 0
    }



-- UPDATE


type Msg
    = Change String
    | Increment
    | Decrement


update : Msg -> Model -> Model
update msg argOne =
    case msg of
        Change newContent ->
            { argOne | content = newContent }

        Increment ->
            { argOne | counter = argOne.counter + 1 }

        Decrement ->
            { argOne | counter = argOne.counter - 1 }



-- VIEW


view : Model -> Html Msg
view argOne =
    div []
        [ input [ placeholder "Text to reverse", value argOne.content, onInput Change ] []
        , div []
            [ text (String.reverse argOne.content) ]
        , div
            []
            [ button [ onClick Decrement ] [ text "-" ]
            , div [] [ text (String.fromInt argOne.counter) ]
            , button [ onClick Increment ] [ text "+" ]
            ]
        ]
