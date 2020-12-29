module FA_TuplesExample exposing (suite)

{-
   Elm has a built in syntax for a 'pair' of values, it lets you define a point in an x,y axis like this

     origin : (Float, Float)
     origin =
       (0, 0)

     position : (Float, Float)
     position =
       (3, 4)

   To model more complex data there are other constructs, but it's often useful to use tuples to return pairs
   Notice that the type definition of the function contains the comma, and it's the same to construct the tuple

   The documentation on tuples can be found here:
   https://package.elm-lang.org/packages/elm/core/latest/Tuple

   Please implement stringAndLength to return the length of a string passed in as a parameter
-}

import Expect exposing (..)
import F_TuplesAndPatternMatching exposing (..)
import Test exposing (..)


suite =
    describe "stringAndLength"
        [ test """
      when hello is passed in returns 5
      """ <|
            \_ -> Expect.equal ( "hello", 5 ) (stringAndLength "hello")
        , test """
      when 'hello world! is passed in returns 12
      """ <|
            \_ -> Expect.equal ( "hello world!", 12 ) (stringAndLength "hello world!")
        ]
