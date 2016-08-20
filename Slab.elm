module Slab exposing (..)

type alias PersonId = Int

type alias Relationship =
    {
        type' : String
        , personId : PersonId
    }

type alias Person =
    {
        id : PersonId
        , name : String
        , age : Maybe Int
        , relationships : Maybe PersonId
    }

secondPersonId = 2

init : Person
--init = { id = 1, name = "Adam", relationships = [ {type' = "wife", personId = 2}, {type' = "son", personId = 3}, {type' =  "daughter", personId = 4} ] }
init = { id = 1, name = "Adam", age = Just 38, relationships = Just secondPersonId }