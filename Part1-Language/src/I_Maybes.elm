module I_Maybes exposing (..)


defaultStringToInt : String -> Maybe Int
defaultStringToInt string =
    String.toInt string



{-
   TODO: Exercise 1:
   Implement a parseStringToIntOrZero function that given a string:
     If the string can be parsed returns the number
     otherwise returns 0
   Implement it using the function Maybe.withDefault:
   https://package.elm-lang.org/packages/elm/core/latest/Maybe#withDefault
-}
{-
   TODO: Exercise 2:
   Implement a parseStringToFloatOrZero in a similar way as the above,
   this time use the |> operator to concatenate function calls
-}
{-
   TODO: Exercise 3:
   Implement maybeSum, it is a function that takes 2 maybe ints and returns
   a string representing the sum or an empty string if either value is Nothing
-}
{-
   TODO: Exercise 4:
   Implement parseMaybeStringToIntOrZero which takes a Maybe String and returns
   the int value or zero if the input value is Nothing or if the string can't be parsed to a number
-}
