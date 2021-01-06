module JE_RecordPatternMatching exposing (suite)

{-
   We saw pattern matching before for other types, how does it apply for records?

   If we want to use only specific fields from a record withouth having to access everything else we can use the same pattern matching mechanism we saw earlier:

     fullName : Person ->String
     fullName {name, surname} =
       name ++ surname

   as you can see the name in the 'pattern matching' portion of the function definition sets variables that need to match the fields from the record. And afterwards you can just use those variables
   Implement the distanceFromOrigin function that takes a moving point and calculates the distance from the origin using pitagora's theorem

     square root ( x ^ 2 + y ^ 2)

   Open src/Part1-Language/src/J_Record.elm and implement distanceFromOrigin
-}

import Expect exposing (..)
import J_Record exposing (..)
import Test exposing (..)


movingPoint =
    { x = 3.0
    , y = 4.0
    , vector =
        { x = 1.0
        , y = 2.0
        }
    }


suite =
    describe "distanceFromOrigin"
        [ test """
      when the point has coordinates (3, 4) returns 5
      """ <|
            \_ -> Expect.within (Absolute 0.0000001) 5.0 (distanceFromOrigin movingPoint)
        ]
