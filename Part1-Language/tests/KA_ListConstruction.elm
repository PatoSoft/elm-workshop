module KA_ListConstruction exposing (suite)

{-
   When it comes to collections, Elm has one very strict requirement that you
   would have to deal with. All Elm collection types (And there is a bunch of
   them) require for elements to be of the same type. Which means that you can
   not have the collection of strings and numbers mixed together.

   List is the primary collection type used in Elm. It offers a great deal of
   performance when it comes to iterating, mapping, filtering etc. The main
   limitation of the List is that it doesn't support index access of its elements.

   In this exercise, we are going to learn to construct a List.
   Implement a collect3 function that takes three elements of the same type and
   returns a list that contains these elements

   The syntax for creating the list is: [1, 2]

   Open src/Part1-Language/src//K_List.elm and implement collect3
-}

import Expect exposing (..)
import K_List exposing (..)
import Test exposing (..)


suite =
    describe "collect3"
        [ test """
      when 1, 2, 3 are passed returns [1, 2, 3]
      """ <|
            \_ -> Expect.equal [ 1, 2, 3 ] (collect3 1 2 3)
        , test """
      when "a", "b", "c" are passed returns ["a", "b", "c"]
      """ <|
            \_ -> Expect.equal [ "a", "b", "c" ] (collect3 "a" "b" "c")
        ]
