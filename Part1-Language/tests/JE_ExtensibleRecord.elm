module JE_ExtensibleRecord exposing (suite)

{-
   Maybe an example with shapes?
   Open src/Part1-Language/src/J_Record.elm and implement FUNCTION
-}

import Expect exposing (..)
import J_Record exposing (..)
import Test exposing (..)


suite =
    describe "FUNCTION"
        [ test """
      when XXX is passed returns YYY
      """ <|
            \_ -> Expect.equal YYY (FUNCTION XXX)
        , test """
      when XXX is passed returns YYY
      """ <|
            \_ -> Expect.equal YYY (FUNCTION XXX)
        ]
