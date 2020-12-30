module I_Maybes exposing (..)


defaultStringToInt : String -> Maybe Int
defaultStringToInt string =
    String.toInt string



{-
   TODO: Exercise 1:
     Implement a parseStringToIntOrZero function that given a string:
       If the string can be parsed returns the number
       otherwise returns 0
-}
