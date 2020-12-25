module AA_FunctionsLetBlock exposing (suite)

import A_FunctionsBasics exposing (..)
import Test exposing (..)
import Expect exposing (..)

suite =
  test """
    Functions always return a single value, you can define temporary values in a let block
    implement the binomialFunction 3x + 6Y + 3
    in the file
    FunctionBasics.elm 
    """ <|
      \_ -> Expect.equal 30 (A_FunctionsBasics.binomialFunction 5 2)
