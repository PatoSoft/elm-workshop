module D_BoolBasics exposing (nAnd, notEqual)

{-
   TODO: Exercise 1
   Implement notEqual function
   https://package.elm-lang.org/packages/elm/core/latest/Basics

   Example of usage:
     notEqual 2.0 2
-}


notEqual : Float -> Int -> Bool
notEqual a b =
    a /= toFloat b



{-
   TODO: Exercise 2
   Implement nAnd function
   https://package.elm-lang.org/packages/elm/core/latest/Basics

   Example of usage:
     nAnd True True
-}


nAnd : Bool -> Bool -> Bool
nAnd a b =
    not (a && b)
