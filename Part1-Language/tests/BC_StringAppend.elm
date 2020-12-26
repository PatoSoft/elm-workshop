module BC_StringAppend exposing (suite)
{-
Another function that instead can be used is append.
implement hello2 in the StringBasics file
-}

import B_StringBasics exposing (..)
import Test exposing (..)
import Expect exposing (..)

suite =
  test """
  hello2 The output will show Hello world!
  """ <| 
    \_ -> Expect.equal "Hello world!" (hello2 "world!")
