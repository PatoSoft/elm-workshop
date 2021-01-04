module IB_MaybeSum exposing (suite)

{-
   Now let's assume we are getting from an api 2 numbers that can be null.
   We go through some parsing and we finally have the numbers we just want to sum together.

   The idea here is that we want to return a string with either the sum or an empty string when either value is nothing.

   You can have a look at the Maybe.map2 and Maybe.map functions in the documentation and try using them in combination with Maybe.withDefault

   Open src/Part1-Language/src/I_Maybes.elm and implement maybeSum
-}

import Expect exposing (..)
import I_Maybes exposing (..)
import Test exposing (..)


suite =
    describe "maybeSum"
        [ test """
      when (Just 10) (Just 20) is passed returns "30"
      """ <|
            \_ -> Expect.equal "30" (maybeSum (Just 10) (Just 20))
        , test """
      when (Just 13) (Just 11) is passed returns "24"
      """ <|
            \_ -> Expect.equal "24" (maybeSum (Just 13) (Just 11))
        , test """
      when (Just 10) Nothing is passed returns ""
      """ <|
            \_ -> Expect.equal "" (maybeSum (Just 10) Nothing)
        , test """
      when Nothing (Just 10) is passed returns ""
      """ <|
            \_ -> Expect.equal "" (maybeSum Nothing (Just 10))
        ]
