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

--main : Element
--main = div [] (List.map Html.text ["son", "daughter", "wife"])
-- [Html.text "son", Html.text "daughter", Html.text "wife"]
main = --div [] [div [] [Html.text "son"], div [] [Html.text "daughter"], div [] [Html.text "wife"]]
    let
        --relationships = ["son", "daughter", "wife"]
        --relationshipsAsHtmlTexts = List.map Html.text relationships
        root = Slab.init
        --listRelationshipsAsString = List.map .type' (.relationships root)
        --listRelationshipsAsString = List.map .type' (.relationships root)
        --listRelationshipsAsString = Maybe.map .type' (.relationship root)

        --listRelationshipsAsHtmlTexts = List.map Html.text listRelationshipsAsString
    --    listRelationshipsAsHtmlTexts = List.map Html.text ["son", "daughter", "wife"]
        --makeArray a = [a]
        --relationshipArray = List.map makeArray relationshipsAsHtmlTexts
        --changeIt s = Html.div [] [Html.text s]
        --embedInDiv s = div [] [Html.text s]
        embedInDiv s = div [] [a [href "#"] [Html.text s]]
        getAgeAsText p = withDefault "unknown" <| Maybe.map toString (.age p)
        --oneOf [Just "unknown", Maybe.map toString (.age p)]
        --asHtml p = div [] [Html.text <| .name p, Html.text " ", Html.text <| toString (.id p), Html.text " ", Html.text <| getAgeAsText p]
        asHtml p = div [] <| List.map Html.text [(.name p), " ", toString (.id p), " ", getAgeAsText p]
        --asHtml p = div [] [Html.text (getAgeAsText root)]
        --embedInDiv s = div [] [a [href "#"] [Html.li [] [Html.text s]]]
        --asAnArray = List.map makeArray listRelationshipsAsHtmlTexts
        --listRelationshipsAsDivs = List.map2 Html.div [] ([listRelationshipsAsHtmlTexts])
    in
        -- this works! don't change it!
        -- div [] (List.map (\s -> Html.div [] [Html.text s]) ["son", "daughter", "wife"])
        -- div [] (List.map embedInDiv listRelationshipsAsString)

       -- div [] (List.concat [[Html.text (root.name ++ " (" ++ (toString root.id) ++ ")")], Maybe.withDefault (Html.text "") (Maybe.map embedInDiv listRelationshipsAsString)])
        div [] [asHtml root]
    --    div [] (List.map Html.text ["son", "daughter", "wife"])
        --.relationships root |> .typea |> List.map
        --div [] (List.map2 div [] relationshipArray)
        --div [] (List.map2 div [] (List.map Html.text (List.map .typea (.relationships root))))
        --div [] (List.map Html.text (List.map .typea (.relationships root)))

        --List.map Html.text (List.map .typea (.relationships root)))
        --[
            --h1 [] [Html.text (.name root)]
            --, p [] [Html.text (String.concat (.relationships root))]
            --,

--        ]
--
{-
shape : Int -> Form
shape n =
  let
    angle = degrees (30 * toFloat (log "n" n))
  in
    circle 10
      |> filled (hsl angle 0.7 0.5)
      |> move (45 * cos angle, 45 * sin (log "angle" angle))

--toElement : Int -> Int -> Html -> Element

content : List Element
content =
  [ toElement 30 30 (h1 [] [div [] [Html.text "Hello, World!"]])
  , image 200 200 "/imgs/yogi.jpg"
  , image 472 315 "/imgs/shells.jpg"
  , collage 150 150 (List.map shape [0..11])
  ]
-}