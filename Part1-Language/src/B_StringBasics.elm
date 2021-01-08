module B_StringBasics exposing (hello1, hello2, hello3, lengthOfString, removeTextFromString, wrongInt, wrongString)


wrongInt =
    0


wrongString =
    ""



-- Objective: get accustomed with the documentation and function signature
-- String documentation: https://package.elm-lang.org/packages/elm/core/latest/String
{-
   TODO: Exercise 1
   Implement lengthOfString using the functions provided in the String module
   https://package.elm-lang.org/packages/elm/core/latest/String

   Example of usage:
     lengthOfString "Hello"
-}


lengthOfString : String -> Int
lengthOfString string =
    wrongInt



{-
   TODO: Exercise 2
   Implement hello1 by using the ++ operator on strings
   https://package.elm-lang.org/packages/elm/core/latest/String

   Example of usage:
     hello1 "Bob"
-}


hello1 : String -> String
hello1 subject =
    "Hello " ++ wrongString



{-
   TODO: Exercise 3
   Implement hello2 by using the append operator on strings
   https://package.elm-lang.org/packages/elm/core/latest/String

   Example of usage:
     hello2 "Bob"
-}


hello2 : String -> String
hello2 subject =
    wrongString



{-
   TODO: Exercise 4
   Use append to implement hello3, note that you can use let blocks to declare functions, in this case
   we create a curried version of append called 'hello' and we can use it to the string passed in
   https://package.elm-lang.org/packages/elm/core/latest/String

   Example of usage:
     hello3 "Bob"
-}


hello3 : String -> String
hello3 subject =
    let
        hello =
            String.append "Hello"
    in
    hello wrongString



{-
   TODO: Exercise 5
   Use one of the functions in the String module to implement 'removeTextFromString'
   https://package.elm-lang.org/packages/elm/core/latest/String

   Example of usage:
     removeTextFromString "not" "Masks do not work!"
-}


removeTextFromString : String -> String -> String
removeTextFromString substring string =
    wrongString
