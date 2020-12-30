module IA_Maybes exposing (suite)

{-
   A lot of programming languages have the concept of null. In ruby it's nil, in javascript null. In elm the most similar concept is Nothing.
   But having 'Nothing' by itself can be trcky for the compiler to check for your code correctness.
   The compiler won't be able to know if a value can or can not be null and won't be able to ensure all different edge cases are handled in your application.

   So what alternative is there?
   There is a concept of 'Maybes'. That is defined as the following:

     type Maybe a
         = Just a
         | Nothing

   as you can see the Maybe type is generic, meaning that any type can be a Maybe.
   An example from the String documentation is:

      toInt : String -> Maybe Int

   And calling it with "-42" and "3.1" returns the following:

      String.toInt "-42" == Just -42
      String.toInt "3.1" == Nothing


   But what can be done with a Maybe? Well first of all you could use the normal pattern matching

     parseStringToIntOrZero value =
       case String.toInt value of
         Just number -> number
         Nothing -> 0

   But the core library also has 3 main functions (withDefault, map, andThen) to handle maybes.

   Let's have a look at withDefault first

-}

import Expect exposing (..)
import I_Maybes exposing (..)
import Test exposing (..)


suite =
    describe "parseStringToIntOrZero"
        [ test """
      when "20" is passed returns 20
      """ <|
            \_ -> Expect.equal 20 (parseStringToIntOrZero "20")
        , test """
      when "18" is passed returns 18
      """ <|
            \_ -> Expect.equal 18 (parseStringToIntOrZero "18")
        , test """
      when "lala" is passed returns 0
      """ <|
            \_ -> Expect.equal 0 (parseStringToIntOrZero "lala")
        ]
