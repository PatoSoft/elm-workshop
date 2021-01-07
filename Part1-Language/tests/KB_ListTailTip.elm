module KB_ListTailTip exposing (suite)

{-
   Here we want you to look through the List's documentation and figure out what
   you can utilise to get the very last element of the List.

   Open src/Part1-Language/src//K_List.elm and implement tailTip function
-}

import Expect exposing (..)
import K_List exposing (..)
import Test exposing (..)


suite =
    describe "tailTip"
        [ test """
      when [1,2,3] is passed returns Just 3
      """ <|
            \_ -> Expect.equal (Just 3) (tailTip [ 1, 2, 3 ])
        , test """
      when ["a"] is passed returns Just "a"
      """ <|
            \_ -> Expect.equal (Just "a") (tailTip [ "a" ])
        , test """
      when [] is passed returns Nothing
      """ <|
            \_ -> Expect.equal Nothing (tailTip [])
        ]
