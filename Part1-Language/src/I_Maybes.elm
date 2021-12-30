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


parseStringToIntOrZero : String -> Int
parseStringToIntOrZero string =
    Maybe.withDefault 0 (String.toInt string)



{-
   TODO: Exercise 2:
   Implement a parseStringToFloatOrZero in a similar way as the above,
   this time use the |> operator to concatenate function calls
-}


parseStringToFloatOrZero : String -> Float
parseStringToFloatOrZero string =
    String.toFloat string
        |> Maybe.withDefault 0.0



{-
   TODO: Exercise 3:
   Implement maybeSum, it is a function that takes 2 maybe ints and returns
   a string representing the sum or an empty string if either value is Nothing
-}


maybeSum : Maybe Int -> Maybe Int -> String
maybeSum val1 val2 =
    if val1 == Nothing || val2 == Nothing then
        ""

    else
        let
            valInt1 : Int
            valInt1 =
                Maybe.withDefault 0 val1

            valInt2 : Int
            valInt2 =
                Maybe.withDefault 0 val2
        in
        String.fromInt (valInt1 + valInt2)



{-
   TODO: Exercise 4:
   Implement parseMaybeStringToIntOrZero which takes a Maybe String and returns
   the int value or zero if the input value is Nothing or if the string can't be parsed to a number
-}


parseMaybeStringToIntOrZero : Maybe String -> Int
parseMaybeStringToIntOrZero val =
    val
        |> Maybe.andThen String.toInt
        |> Maybe.withDefault 0
