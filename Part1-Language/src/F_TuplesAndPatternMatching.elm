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

-- fizzbuzz
