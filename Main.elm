import Color exposing (..)
import Graphics.Collage exposing (..)
import Graphics.Element exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Debug exposing (..)
import Slab
import String exposing (..)
import List exposing (..)
import Maybe exposing (..)

main =
    let
        root = Slab.init
        embedInDiv s = div [] [a [href "#"] [Html.text s]]
        getAgeAsText p = withDefault "unknown" <| Maybe.map toString (.age p)
        asHtml p = div [] <| List.map Html.text [(.name p), " ", toString (.id p), " ", getAgeAsText p]
    in
        -- this works! don't change it!
        -- div [] (List.map (\s -> Html.div [] [Html.text s]) ["son", "daughter", "wife"])

        div [] [asHtml root]