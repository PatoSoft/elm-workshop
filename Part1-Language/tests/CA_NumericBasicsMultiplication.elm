module CA_NumericBasicsMultiplication exposing (suite)

{-
   Since Elm is a statically typed language it has distinct types for integer
   and floating-point values.
   Although it gives us more control and visibility over these values, it also
   adds some complexity since we can not perform some basic operations between
   these two types.
   To solve that it is quite common to typecast arguments to the same type
   before performing the required operation.

   In next excercise we need to implement a multiply function that will allow us
   to multiply floating-point value n times

   Implement multiply in the file src/C_NumbericBasics.elm
-}

import C_NumericBasics exposing (..)
import Expect exposing (..)
import Test exposing (..)


suite =
    describe "multiply"
        [ test """
      when 4 and 3.0 are passed returns 12.0
      """ <|
            \_ -> Expect.within (Absolute 0.0000001) 12.0 (multiply 4 3.0)
        , test """
      when 2 and 4.2 are passed returns 8.4
      """ <|
            \_ -> Expect.within (Absolute 0.0000001) 8.4 (multiply 2 4.2)
        ]
