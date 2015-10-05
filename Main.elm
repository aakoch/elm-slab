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

embedInDiv s = div [] [a [href "#"] [Html.text s]]
getAgeAsText p = withDefault "unknown" <| Maybe.map toString (.age p)
asHtml p = div [] <| List.map Html.text [(.name p), " ", toString (.id p), " ", getAgeAsText p]

view : Signal.Address a -> Person -> Html
view address model =
    div [] [asHtml model]