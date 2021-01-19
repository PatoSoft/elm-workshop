module DB_BoolBasicsNand exposing (suite)

{-
   In this exercise we want you to implement a nAnd function that imitates the
   behaviour of the NAND gate. This gate will always return true unless the a and b
   input signals are both true.

   Open src/Part1-Language/src//D_BoolBasics.elm and implement FUNCTION
-}

import D_BoolBasics exposing (..)
import Expect exposing (..)
import Test exposing (..)


suite =
    describe "nAnd"
        [ test """
      when False and False are passed it returns True
      """ <|
            \_ -> Expect.equal True (nAnd False False)
        , test """
      when False and True are passed returns True
      """ <|
            \_ -> Expect.equal True (nAnd False True)
        , test """
      when True and False are passed returns True
      """ <|
            \_ -> Expect.equal True (nAnd True False)
        , test """
      when True and True are passed returns False
      """ <|
            \_ -> Expect.equal False (nAnd True True)
        ]
