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

embedInDiv str = div [] [a [href "#"] [Html.text str]]

getAgeAsText : Person -> String
getAgeAsText person = withDefault "unknown" <| Maybe.map toString (.age person)

asHtml : Person -> Html
asHtml p = div [] (createPersonString p)

createPersonString : Person -> List Html
createPersonString person = List.map Html.text [String.join " " [(.name person), toString (.id person), getAgeAsText person]]

view : Signal.Address a -> Person -> Html
view address model =
    div [] [asHtml model]