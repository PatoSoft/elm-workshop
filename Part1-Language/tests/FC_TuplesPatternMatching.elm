module FC_TuplesPatternMatching exposing (suite)

{-
   In imperative programming languages the = sign denotes an assignment. The difference in functional programming language is that the = denotes a ground truth in a more mathematical sense.
   For example in javascript you can write this code:

     var x = 'world'
     x = 'hello' + x

   But in elm you can't do the same e.g. writing this will cause an error

     lala =
       let
           x = "world"
           x = "hello" ++ x
       in
           x

   This is useful because assignments, case statements, function calls use the same principle and that can be used for a very nifty language feature:

   ****************************************
   *           PATTERN MATCHING           *
   ****************************************

   Given the = symbol is for a 'ground truth' you can 'extract' the information you need using it.

   Let's suppose you have a tuple, and you want to read the first value, you can do this

     readFirstValue : (String, Int) -> String
     readFirstValue tuple =
       let
           (firstValue, secondValue) = tuple
       in
         firstValue

   This part in the let statement:

     (firstValue, secondValue) = tuple

   means:
   Given tuple has this shape (x, y) I state that firstValue = x and secondValue = y

   In that implementation the odd thing is that you are not using secondValue though.
   You can also tell elm that you don't need id by using _

     readFirstValue : (String, Int) -> String
     readFirstValue tuple =
       let
           (firstValue, _) = tuple
       in
         firstValue

   Implement readSecondValueAssignment in the F_TuplesAndPatternMatching file
-}

import Expect exposing (..)
import F_TuplesAndPatternMatching exposing (..)
import Test exposing (..)


suite =
    describe "readSecondValueAssignment"
        [ test """
      when ("Hello", 5) is passed returns 5
      """ <|
            \_ -> Expect.equal 5 (readSecondValueAssignment ( "Hello", 5 ))
        , test """
      when ("Hello world!", 12) is passed returns 12
      """ <|
            \_ -> Expect.equal 12 (readSecondValueAssignment ( "Hello world!", 12 ))
        ]
