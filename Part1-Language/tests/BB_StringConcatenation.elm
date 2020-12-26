module BB_StringConcatenation exposing (suite)
{-
One of the most common operation over strings is the string concatenation.
To concatenate strings you can use the ++ operator

Implement it in the 'hello1' function in StringBasics.elm
-}

import B_StringBasics exposing (..)
import Test exposing (..)
import Expect exposing (..)

suite =
  test """
  hello1 The output will show Hello world!
  """ <| 
    \_ -> Expect.equal "Hello world!" (hello1 "world!")
