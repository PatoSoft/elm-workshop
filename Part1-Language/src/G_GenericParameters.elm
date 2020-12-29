module G_GenericParameters exposing (..)

genericParameterSyntaxExample : (aValue -> Int) -> (anotherValue -> Int) -> aValue -> anotherValue -> Int
genericParameterSyntaxExample firstFunction secondFunction firstArg secondArg =
  (firstFunction firstArg) + (secondFunction secondArg)

{-
TODO: define a ternary operator function that takes a bool, and 2 (generic) values and returns the first value when the condition is true, otherwise returns the second
-}

