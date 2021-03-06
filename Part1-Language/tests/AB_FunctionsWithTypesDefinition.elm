module AB_FunctionsWithTypesDefinition exposing (suite)

{-
   So far we looked at functions that elm automatically define, via static
   analysis the type of input it expects.

   But that makes the code more hard to comprehend, as in very complex code
   pieces you need to assume the types passed on each function

   Elm allows you to write down the type definition at the beginning of the
   function, for instance for the sum code you can define it as

     sum : Int -> Int -> Int
     sum a b =
       a + b

   In layman's terms this function takes 2 Int and return an Int.

   Elm defines several basic types you might be familiar with

   String, Int, Float, Bool, Numeric

   and some more complex types that we will look at later.
   Implement isEven in the file src/A_FunctionsBasics.elm
-}

import A_FunctionsBasics exposing (..)
import Expect exposing (..)
import Test exposing (..)


suite =
    describe "isEvent"
        [ test """
  passing 2 returns True
  """ <|
            \_ -> Expect.equal True (A_FunctionsBasics.isEven 2)
        , test """
  passing 5 returns False
  """ <|
            \_ -> Expect.equal False (A_FunctionsBasics.isEven 5)
        ]
