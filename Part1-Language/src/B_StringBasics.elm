module B_StringBasics exposing (..)

wrongInt = 0
wrongString = ""

-- Objective: get accustomed with the documentation and function signature

lengthOfString : String -> Int
lengthOfString string =
  wrongInt


hello1 : String -> String
hello1 subject = 
  "Hello " ++ wrongString


hello2 : String -> String
hello2 subject = 
  String.append "Hello " wrongString


hello3 : String -> String
hello3 subject =
  let
      hello = String.append "Hello" 
  in
      hello wrongString


removeTextFromString : String -> String -> String
removeTextFromString textToRemove string =
  wrongString
