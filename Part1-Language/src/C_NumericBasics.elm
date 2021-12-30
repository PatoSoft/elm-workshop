module C_NumericBasics exposing (multiply, pagesCount, wrongFloat, wrongInt)


wrongInt =
    0


wrongFloat =
    0.0



{-
   TODO: Exercise 1
   Implement multiply function
   https://package.elm-lang.org/packages/elm/core/latest/Basics

   Example of usage:
     multiply 4 2.0
-}


multiply : Int -> Float -> Float
multiply n value =
    toFloat n * value



{-
   TODO: Exercise 2
   Implement pagesCount function

   Example of usage:
     pagesCount 5 12
-}


pagesCount : Int -> Int -> Int
pagesCount perPage resultsCount =
    resultsCount // perPage + 1
