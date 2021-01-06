module DA_BoolBasicsInequality exposing (suite)

{-
   Booleans in Elm are presented as True and False and they provide similar
   functionality as booleans in any other language.
   Two things that worth mentioning are the "not" function that replaces classic
   "!" operator and "/=" that replaces a "!="

   Using knowledge acquired from the numerics chapter, implement a simple "notEqual"
   function that compares Float and Int values

   Open src/Part1-Language/src//D_BoolBasics.elm and implement notEqual
-}

import D_BoolBasics exposing (..)
import Expect exposing (..)
import Test exposing (..)


suite =
    describe "notEqual"
        [ test """
      when 1.0 and 2 are passed returns True
      """ <|
            \_ -> Expect.equal True (D_BoolBasics.notEqual 1.0 2)
        , test """
      when 3.0 and 3 are passed returns False
      """ <|
            \_ -> Expect.equal False (D_BoolBasics.notEqual 3.0 3)
        ]
