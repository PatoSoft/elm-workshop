module G_GenericParameters exposing (..)


genericParameterSyntaxExample : (aValue -> Int) -> (anotherValue -> Int) -> aValue -> anotherValue -> Int
genericParameterSyntaxExample firstFunction secondFunction firstArg secondArg =
    firstFunction firstArg + secondFunction secondArg



{-
   TODO: Exercise 1
   Define a ternary operator function that takes a bool,
   and 2 (generic) values and returns the first value when
   the condition is true, otherwise returns the second
   The sintax is like a normal function with types definition
   but the 'generic' values are lowercase

   myFunction : (aValue -> Int) -> aValue -> Int
   myFunction callback value = ...

   the function is called ternaryOperator
-}


ternaryOperator : Bool -> aValue -> aValue -> aValue
ternaryOperator a b c =
    if a then
        b

    else
        c
