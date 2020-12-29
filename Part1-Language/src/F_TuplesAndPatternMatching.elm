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

-- fizzbuzz
