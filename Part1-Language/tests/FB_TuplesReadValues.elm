module FB_TuplesReadValues exposing (suite)

{-
   To read the values for tuples there is this set of functionality from elm:
   https://package.elm-lang.org/packages/elm/core/latest/Tuple

   implement the functions:
   - readFirstValue
   - readSecondValue
-}

import Expect exposing (..)
import F_TuplesAndPatternMatching exposing (..)
import Test exposing (..)


suite =
    describe "readValues"
        [ describe "readFirstValue"
            [ test """
        when ("hello", 5) is passed in returns "hello"
        """ <|
                \_ -> Expect.equal "hello" (readFirstValue ( "hello", 5 ))
            , test """
        when ("hello world!", 12) is passed in returns "hello world!"
        """ <|
                \_ -> Expect.equal "hello world!" (readFirstValue ( "hello world!", 12 ))
            ]
        , describe "readSecondValue"
            [ test """
        when ("hello", 5) is passed in returns 5
        """ <|
                \_ -> Expect.equal 5 (readSecondValue ( "hello", 5 ))
            , test """
        when ("hello world!", 12) is passed in returns 12
        """ <|
                \_ -> Expect.equal 12 (readSecondValue ( "hello world!", 12 ))
            ]
        ]
