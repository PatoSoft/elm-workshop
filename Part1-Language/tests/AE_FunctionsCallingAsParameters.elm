module AE_FunctionsCallingAsParameters exposing (suite)

import A_FunctionsBasics exposing (..)
import Test exposing (..)
import Expect exposing (..)

suite =
  test """
  Functions sometimes can be passed as parameters
  """ <| 
    \_ -> Expect.equal 5 (applySum3 2)
