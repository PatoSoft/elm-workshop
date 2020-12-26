module BD_StringAppendLetReminder exposing (suite)
{-
Implement hello3, it does basically the same thing as hello2 but try to remember what
- let does
- hello is
-}

import B_StringBasics exposing (..)
import Test exposing (..)
import Expect exposing (..)

suite =
  test """
  hello3 The output will show Hello world!
  """ <| 
    \_ -> Expect.equal "Hello world!" (hello3 "world!")
