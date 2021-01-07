module KD_ListPatternMatching exposing (suite)

{-
   We saw pattern matching before in other exercises, and it's something you can also use for lists.
   On list pattern matching uses the :: operator, and basically allows you to extract the first element of the list and separate it from the rest
   so if we were going to use pattern matching to find the last element of a list, this would be the implementation:

     tailTip2 : List item -> Maybe item
     tailTip2 items =
         case items of
             head :: [] ->
                 Just head

             head :: rest ->
                 tailTip2 rest

             _ ->
                 Nothing


    Now let's try to implement the map function ourself using the same pattern matching implementation

    Open Part1-Language/src/K_List.elm and implement myMap
-}

import Expect exposing (..)
import K_List exposing (..)
import Test exposing (..)


suite =
    describe "myMap"
        [ test """
      when String.fromInt [1, 2, 3] is passed returns ["1", "2", "3"]
      """ <|
            \_ -> Expect.equal [ "1", "2", "3" ] (myMap String.fromInt [ 1, 2, 3 ])
        , test """
      when .y is passed returns [10, 20]
      """ <|
            \_ -> Expect.equal [ 10, 20 ] (myMap .y [ { y = 10 }, { y = 20 } ])
        ]
