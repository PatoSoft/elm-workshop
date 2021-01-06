module JC_RecordTypes exposing (suite)

{-
   You can imagine that in big application putting the record type definition for each function that needs to access the data could cause a lot of repetition.
   This is why in elm you can define record types.
   For instance, for our person record we can define the following:

     type alias Person =
       { name: String
       , surname: String
       , nickname: String
       }

   And that type alias can be used in function definition like so

     readMaybeNickname : Maybe Person -> String

   But type definitions can also be nested like so:

     type alias Employee =
       { person: Person
       , role: String
       }

   To 'Create' the record type you can just create a record with the same structure, the order of the fields is *Important*

     employee =
       { person =
         {
         , name = "L"
         , surname = "Lawliet"
         , nickname = "Ryuzaki"
         }
         , role = "Investigator"
       }

   Now implement the point function that returns a Point structure

   Open src/Part1-Language/src/J_Record.elm and implement createMovingPoint
-}

import Expect exposing (..)
import J_Record exposing (..)
import Test exposing (..)


suite =
    describe "createMovingPoint"
        [ test """
      when createMovingPoint 1.1 2.2 3.3 4.4 is passed returns a record with x = 1.1
      """ <|
            \_ -> Expect.within (Absolute 0.0000001) 1.1 (createMovingPoint 1.1 2.2 3.3 4.4).x
        , test """
      when createMovingPoint 1.1 2.2 3.3 4.4 is passed returns a record with y = 2.2
      """ <|
            \_ -> Expect.within (Absolute 0.0000001) 2.2 (createMovingPoint 1.1 2.2 3.3 4.4).y
        , test """
      when createMovingPoint 1.1 2.2 3.3 4.4 is passed returns a record with vector.x = 3.3
      """ <|
            \_ -> Expect.within (Absolute 0.0000001) 3.3 (createMovingPoint 1.1 2.2 3.3 4.4).vector.x
        , test """
      when createMovingPoint 1.1 2.2 3.3 4.4 is passed returns a record with vector.x = 4.4
      """ <|
            \_ -> Expect.within (Absolute 0.0000001) 4.4 (createMovingPoint 1.1 2.2 3.3 4.4).vector.y
        ]
