module JD_RecordUpdate exposing (suite)

{-
   We saw how to define a record, but how can we update one?

   - explain syntax
   - ask to calculate the new position for a moving point

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
