import Html exposing (..)
import Html.Attributes exposing (..)
import Slab exposing (Person)
import String exposing (..)
import List exposing (..)
import Maybe exposing (..)
import Html.App exposing (..)
import Html.Events exposing (onClick)


main =
  Html.App.beginnerProgram
    { model = Slab.init, update = \n -> n, view = view}

getAgeAsText : Person -> String
getAgeAsText person = withDefault "unknown" <| Maybe.map toString (.age person)

asHtml : Person -> Html a
--asHtml person = div [] (createPersonString person)
--asHtml person = div [] ([Html.text (makeString person)])
--asHtml person = div [] <| [Html.text (makeString person)]
asHtml person = div [] <| [Html.text <| makeString person]

--createPersonString : Person -> List Html
--createPersonString person = List.map Html.text [makeString person]

makeString person = String.join " " [(.name person), toString (.id person), getAgeAsText person]

view : Person -> Html a
view model =
    div [] [asHtml model]