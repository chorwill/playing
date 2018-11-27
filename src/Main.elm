module Main exposing (main)

import Browser
import Button
import Fields
import Html exposing (Html, div, h1, img, text)
import Html.Attributes exposing (src)



---- PROGRAM ----


main : Program () Fields.Model Fields.Msg
main =
    Fields.main
