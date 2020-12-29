module FD_TuplesPatternMatchingOnFunctionArguments exposing (suite)
{-
Pattern matching works on function arguments, the syntax is similar, for tuples, for instance, you can use the following

  distanceFromOrigin : (Int, Int) -> Float
  distanceFromOrigin (x, y) =
    sqrt ( toFloat (x ^ 2 + y ^ 2) )

 
Implement readSecondValueFunctionArguments in the file F_TuplesAndPatternMatching
-}

import F_TuplesAndPatternMatching exposing (..)
import Test exposing (..)
import Expect exposing (..)

suite =
  describe "readSecondValueFunctionArguments"
  [ test """
      when ("Hello", 5) is passed returns 5
      """ <|
        \_ -> Expect.equal 5 (readSecondValueFunctionArguments ("Hello", 5))
  , test """
      when ("Hello world!", 12) is passed returns 12
      """ <|
        \_ -> Expect.equal 12 (readSecondValueFunctionArguments ("Hello world!", 12))
  ]
