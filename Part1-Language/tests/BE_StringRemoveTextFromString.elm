module BE_StringRemoveTextFromString exposing (suite)

{-
   Let's say we want to remove a bit of text from a string, and we want to implement
   removeTextFromString. How can we do it?

   Have a look at the documentation to see what we can use

   https://package.elm-lang.org/packages/elm/core/latest/String
-}

import B_StringBasics exposing (..)
import Expect exposing (..)
import Test exposing (..)


suite =
    test """
  removeTextFromString: removes the 
  """ <|
        \_ -> Expect.equal "I like cooking my family and my pets" (removeTextFromString "," "I like cooking, my family, and my pets")
