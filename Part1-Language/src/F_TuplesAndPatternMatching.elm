module F_TuplesAndPatternMatching exposing (..)

-- Tuples allow you to create value pairs.


tupleExample : ( String, Int )
tupleExample =
    ( "Hello", 5 )



{-
   TODO: Exercise 1
   Implement a function that returns the string passed in and its length
-}


stringAndLength : String -> ( String, Int )
stringAndLength value =
    ( value, String.length value )



{-
   TODO: Exercise 2
   read first value will return the first value of the tuple
   documentation on tuples: https://package.elm-lang.org/packages/elm/core/latest/Tuple
-}


readFirstValue : ( String, Int ) -> String
readFirstValue tuple =
    Tuple.first tuple



{-
   TODO: Exercise 3
   read second value will return the second value of the tuple
   documentation on tuples: https://package.elm-lang.org/packages/elm/core/latest/Tuple
-}


readSecondValue : ( String, Int ) -> Int
readSecondValue tuple =
    let
        (-, secondValue) = tuple
    in
        secondValue



{-
   TODO: Exercise 4

   pattern matching on assignments:

     readFirstValue : (String, Int) -> String
     readFirstValue tuple =
       let
           (firstValue, _) = tuple
       in
         firstValue
           (firstValue, _) = tuple

   Implement 'readSecondValueAssignment'
-}


readSecondValueAssignment : ( String, Int ) -> Int
readSecondValueAssignment tuple =
    let
        ( _, _ ) =
            tuple
    in
    0



{-
   TODO: Exercise 5
   It is also possible to use pattern matching on function arguments
   Like this:
     distanceFromOrigin : (Int, Int) -> Float
     distanceFromOrigin (x, y) =
       sqrt ( toFloat (x ^ 2 + y ^ 2) )

   implement reading the second value by using pattern matching on function arguments
-}


readSecondValueFunctionArguments : ( String, Int ) -> Int
readSecondValueFunctionArguments changeMeIfYouWant =
    0



{-
   TODO: Exercise 6
   We want to re-implement fizzBuzz by using pattern matching and case statement
   as a reminder:
   fizzbuz takes an integer and returns a string
   - if the integer can be divided by 3 returns "Fizz"
   - if the integer can be divided by 5 returns "Buzz"
   - if the integer can be divided by both 3 and 5 returns "FizzBuzz"
   - otherwise returns the number
-}
