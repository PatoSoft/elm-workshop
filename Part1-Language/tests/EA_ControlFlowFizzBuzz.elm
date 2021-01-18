module EA_ControlFlowFizzBuzz exposing (suite)

{-
   We are going to look at if conditions in elm.
   Later on we will look at an alternative implementation but for now we
   can implement it using an if/else condition.

   In elm you can use if/else:

     if [boolean condition] then
       [statement]
     else if [boolean condition] then
       [statement]
     else
       [statement]

   for this exercise remember that you can calculate the modulo operation
   using modBy
   e.g.
     modBy 5 number == 0
   Only when the number can be divided by 5 without any rest for the division

   Also feel free to use
     String.fromInt number
   to show the string representation for the number
   Implement the fizzbuzz function in the file src/E_ControlFlow.elm
-}

import E_ControlFlow exposing (..)
import Expect exposing (..)
import Test exposing (..)


suite =
    describe "fizzBuzz"
        [ test "With a multiple of 3" <|
            \_ -> Expect.equal "Fizz" (E_ControlFlow.fizzbuzz 33)
        , test "With a multiple of 5" <|
            \_ -> Expect.equal "Buzz" (E_ControlFlow.fizzbuzz 55)
        , test "With a multiple of 15" <|
            \_ -> Expect.equal "FizzBuzz" (E_ControlFlow.fizzbuzz 150)
        , test "With another number" <|
            \_ -> Expect.equal "4" (E_ControlFlow.fizzbuzz 4)
        ]
