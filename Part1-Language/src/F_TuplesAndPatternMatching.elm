module F_TuplesAndPatternMatching exposing (..)


-- Tuples allow you to create value pairs.

tupleExample : (String, Int)
tupleExample = ("Hello", 5)


stringAndLength : String -> (String, Int)
stringAndLength value =
  ("", 10)

-- documentation on tuples: https://package.elm-lang.org/packages/elm/core/latest/Tuple
readFirstValue : (String, Int) -> String
readFirstValue tuple =
  ""


readSecondValue : (String, Int) -> Int
readSecondValue tuple =
  0

-- Pattern matching

readSecondValueAssignment : (String, Int) -> Int
readSecondValueAssignment tuple =
  let
      (_, _) = tuple
  in
      0


readSecondValueFunctionArguments : (String, Int) -> Int
readSecondValueFunctionArguments tuple =
  0

{-
TODO: We want to re-implement fizzBuzz by using pattern matching and case statement
as a reminder:
fizzbuz takes an integer and returns a string
- if the integer can be divided by 3 returns "Fizz"
- if the integer can be divided by 5 returns "Buzz"
- if the integer can be divided by both 3 and 5 returns "FizzBuzz"
- otherwise returns the number
-}

