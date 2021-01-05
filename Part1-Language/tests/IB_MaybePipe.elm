module IB_MaybePipe exposing (suite)

{-
   If you are like me you probably implemented parseStringToIntOrZero like this

     parseStringToIntOrZero : String -> Int
     parseStringToIntOrZero value =
       let
           parsedValue = String.toInt value
       in
           Maybe.withDefault 0 parsedValue

   it's quite a lot of code, and in elm (as in other functional programming languages) you have the pipe operator |> that can help to write more concise code the code above would look as the following:

     parseStringToIntOrZero value =
         String.toInt value
         |> Maybe.withDefault 0

   The idea is that the output of the operation will be passed as the next parameter to the next function call

   Try to implement a function to do the same as the above but parses a float value and returns 0.0 when the string does not match

   Open src/Part1-Language/src/I_Maybes.elm and implement parseStringToFloatOrZero
-}

import Expect exposing (..)
import I_Maybes exposing (..)
import Test exposing (..)


suite =
    describe "parseStringToFloatOrZero"
        [ test """
      when "0.5" is passed returns 0.5
      """ <|
            \_ -> Expect.within (Absolute 0.000000001) 0.5 (parseStringToFloatOrZero "0.5")
        , test """
      when "aa" is passed returns 0.0
      """ <|
            \_ -> Expect.equal 0.0 (parseStringToFloatOrZero "aa")
        ]
