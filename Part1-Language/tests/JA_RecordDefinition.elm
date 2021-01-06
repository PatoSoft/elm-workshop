module JA_RecordDefinition exposing (suite)

{-
   Records are the most similar thing to hashes in ruby and Objects in javascript
   in ruby you could have
       { a: 'b',
         c: 'd'
       }

   in elm the same can be done in records.
   The syntax for records is the following:
     { x = 0
     , y = 0
     }

   you have a bunch of keys on the left that are assigned with values on the right

   As you can imagine this data structure is used very often, when converting a json from an api call and in other instances.



   Open src/Part1-Language/src/J_Record.elm and implement person
-}

import Expect exposing (..)
import J_Record exposing (..)
import Test exposing (..)


suite =
    describe "person"
        [ test """
      when name is called returns "L"
      """ <|
            \_ -> Expect.equal "L" person.name
        , test """
      when surname is called returns "Lawliet"
      """ <|
            \_ -> Expect.equal "Lawliet" person.surname
        , test """
      when alias is called returns "Ryuzaki"
      """ <|
            \_ -> Expect.equal "Ryuzaki" person.nickname
        ]
