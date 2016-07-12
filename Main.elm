import Html exposing (..)
import Html.Attributes exposing (..)
import Slab exposing (Person)
import String exposing (..)
import List exposing (..)
import Maybe exposing (..)
import StartApp.Simple exposing (start)
import Html.Events exposing (onClick)

main =
  StartApp.Simple.start { model = Slab.init, update = \n -> n, view = view }

getAgeAsText : Person -> String
getAgeAsText person = withDefault "unknown" <| Maybe.map toString (.age person)

asHtml : Person -> Html
--asHtml person = div [] (createPersonString person)
--asHtml person = div [] ([Html.text (makeString person)])
--asHtml person = div [] <| [Html.text (makeString person)]
asHtml person = div [] <| [Html.text <| makeString person]

--createPersonString : Person -> List Html
--createPersonString person = List.map Html.text [makeString person]

makeString person = String.join " " [(.name person), toString (.id person), getAgeAsText person]

view : Signal.Address a -> Person -> Html
view address model =
    div [] [asHtml model]