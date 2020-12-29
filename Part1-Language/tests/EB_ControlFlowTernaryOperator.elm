module EB_ControlFlowTernaryOperator exposing (suite)

{-
   Here we are going to implement the ternary operator,
   e.g. in ruby or javascript is the elvis operator
     condition ? result_if_true : result_if_false

   to do so use the 'case' statement:

     case dayInNumber of
           0 ->
               "Sunday"

           1 ->
               "Monday"

           _ ->
               "Unknown day"

   note the _ underscore at the end, that is used to tell elm 'in the case i receive anything else'.
   For this exercise we won't need it, but keep it in mind as we will see it later.

   One thing to notice here is that you can't put a condition on the different options.
   e.g. you can't write

     case number of
       number % 3 -> "Fizz"
       number % 5 -> "Buzz"

   That is because elm uses 'pattern matching' to match the different options it has.
   In other words, the first example works because elm tries to match exactly the value for
   dayInNumber with the different options provided in the code.
-}

import E_ControlFlow exposing (..)
import Expect exposing (..)
import Test exposing (..)


suite =
    describe "ternaryOperator"
        [ test """
      returns a when the condition is true
      """ <|
            \_ -> Expect.equal "a" (E_ControlFlow.ternaryOperator True "a" "b")
        , test """
      returns b when the condition is false
      """ <|
            \_ -> Expect.equal "b" (E_ControlFlow.ternaryOperator False "a" "b")
        ]
