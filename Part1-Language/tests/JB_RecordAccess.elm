module JB_RecordAccess exposing (suite)

{-
   To access fields for records you can just use the dot notation as you would in javascript

   So if we take the 'person' you implemented before you can just access its name by using

     person.name

   That can also be used 'as a function', for instance if you want to take the name out of
   A Maybe <record> you can use

     Maybe.map .name maybeRecord

   Also you will notice the type signature of the function is slightly different from the syntax to declare a record

   Open src/Part1-Language/src/J_Record.elm and implement readMaybeNickname
-}

import Expect exposing (..)
import J_Record exposing (..)
import Test exposing (..)


suite =
    describe "readMaybeNickname"
        [ test """
      when "Just {name = "Light", nickname = "Kira"}" is passed returns "Kira"
      """ <|
            \_ -> Expect.equal "Kira" (readMaybeNickname (Just { name = "Light", nickname = "Kira" }))
        , test """
      when Nothing is passed returns ""
      """ <|
            \_ -> Expect.equal "" (readMaybeNickname Nothing)
        ]
