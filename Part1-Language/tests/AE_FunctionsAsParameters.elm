module AB_FunctionsSumWithCurrying exposing (suite)

import FunctionsBasics exposing (..)
import Test exposing (..)
import Expect exposing (..)

suite =
  test """
  Functions sometimes can be passed as parameters
  """ <| 
    \_ -> Expect.equal 5 (applySum3 2)
