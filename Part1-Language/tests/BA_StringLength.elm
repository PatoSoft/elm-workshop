module BA_StringLength exposing (suite)
{-
As we saw before Strings are a basic type in elm.
But what about common operations we can do to strings?
Elm provides different functions to operate on strings,
and you can find the documentation for it here:

https://package.elm-lang.org/packages/elm/core/latest/String

The first time I went through the documentation I had a hard time
to understand what was written in there. This set of exercise will
focus on understanding how to use the documentation to create our code.
-}

import B_StringBasics exposing (..)
import Test exposing (..)
import Expect exposing (..)

suite =
  test """
  The length of the string is calculated correctly
  """ <| 
    \_ -> Expect.equal 12 (lengthOfString "hello world!")