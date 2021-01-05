module CB_NumericBasicsDivision exposing (suite)

{-
   If you have consulted documentation during the previous exercise, you have
   probably noticed that there are two different division operators in the docs.
   One is used for floating-point division and another used for integer division.

   Some Dynamically typed languages like Ruby also have two different divisions
   but they are very subtle and could be a cause of bugs if the developer
   is not aware of that behaviour.

   For this exercise, we need to write a function that calculates the number of
   pages required to display a certain number of search results if we have a
   known number of results displayed per page.

   Implement pagesCount in the file src/C_NumbericBasics.elm
-}

import C_NumericBasics exposing (..)
import Expect exposing (..)
import Test exposing (..)


suite =
    describe "pagesCount"
        [ test """
      when 2 and 3 are passed returns 2
      """ <|
            \_ -> Expect.equal 2 (pagesCount 2 3)
        , test """

      when 12 and 8 are passed returns 1
      """ <|
            \_ -> Expect.equal 1 (pagesCount 12 8)
        , test """
      when 0 and 1 is passed returns 1
      """ <|
            \_ -> Expect.equal 1 (pagesCount 0 1)
        ]
