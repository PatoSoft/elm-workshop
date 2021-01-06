module KD_ListPatternMatching exposing (suite)

{-
    Open src/Part1-Language/src//K_List.elm and implement FUNCTION

   tailTip2 : List item -> Maybe item
   tailTip2 items =
       case items of
           a :: [] ->
               Just a

           a :: rest ->
               tailTip2 rest

           _ ->
               Nothing
-}

import Expect exposing (..)
import K_List exposing (..)
import Test exposing (..)


suite =
    describe "FUNCTION"
        [ test """
      when XXX is passed returns YYY
      """ <|
            \_ -> Expect.equal YYY (FUNCTION XXX)
        , test """
      when XXX is passed returns YYY
      """ <|
            \_ -> Expect.equal YYY (FUNCTION XXX)
        ]
