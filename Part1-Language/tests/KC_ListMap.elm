module KC_ListMap exposing (suite)

{-
   One of the main ways of manipulating collections is using the map function or
   some of its variations.

   Map receives a function (it will be applied to every single element
   of the collection) and the collection itself. Results of the application of
   this function to elements of the list will be collected into a new list
   and returned

   The syntax of the map looks like that:

     List.map (\el -> String.fromInt el) [1, 2, 3]

   Since String.fromInt function is being applied to the incoming argument we
   can simplify this code a bit:

     List.map String.fromInt [1, 2, 3]

   Similarly, when we are dealing with records we can shorten

     List.map (\user -> user.name) users

   to

     List.map .name users


   In the Tuple chapter, we asked you to implement a stringAndLenght function that
   takes a String and returns a tuple containing this String and its length. Here
   we want you to implement a similar function but it splits the String into
   words and returns a List of tuples containing the word and its length

   Open src/Part1-Language/src//K_List.elm and implement wordsAndLengths
-}

import Expect exposing (..)
import K_List exposing (..)
import Test exposing (..)


suite =
    describe "stringsAndLenghts"
        [ test """
        it returns a list of tuples containing the string and its length
      """ <|
            \_ ->
                Expect.equal [ ( "Keep", 4 ), ( "wearing", 7 ), ( "your", 4 ), ( "bloody", 6 ), ( "masks", 5 ) ]
                    (wordsAndLengths "Keep wearing your bloody masks")
        ]
