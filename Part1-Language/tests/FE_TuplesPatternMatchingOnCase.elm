module FE_TuplesPatternMatchingOnCase exposing (suite)
{-
Pattern matching can be used on case expressions, so let's say our tuple holds 2 strings the first containing a 'language'
and the second the name of a person, and we want to greet the person using the language.
When the name is empty we just say 'hi' and when the language is not italian or english we just say hello
We can implement it in this way

  greet : (String, String) -> String
  greet tuple = 
    case tuple of
      (_, "") -> "hi"
      ("en", name) -> "Welcome " ++ name
      ("it", name) -> "Benvenuto " ++ name
      (_, _) -> "hello"

executing it will give us:
> greet ("it", "")
"hi" : String
> greet ("ix", "")
"hi" : String
> greet ("ix", "Ken")
"hello" : String
> greet ("it", "Ken")
"Benvenuto Ken" : String
> greet ("en", "Ken")
"Welcome Ken" : String

You can see a couple of interesting things here:
- The order of the case conditions is important. 
  e.g. if 
    (_, "") -> "hi" 
  was put after this line:
    ("it", name) -> "Benvenuto " ++ name
  when executing  
    greet ("it", "")
  we would have had
    "Benvenuto " 

- We can use _ to discard values.

Let's now try to re-implement the fizzBuzz function using pattern matching with the case statement
This time you need to implement it starting from the function definition
-}

import F_TuplesAndPatternMatching exposing (..)
import Test exposing (..)
import Expect exposing (..)

suite =
  describe "fizzBuzz"
    [ test "With a multiple of 3" <|
      \_ -> Expect.equal "Fizz" (fizzBuzz 33)
    , test "With a multiple of 5" <|
      \_ -> Expect.equal "Buzz" (fizzBuzz 55)
    , test "With a multiple of 15" <|
      \_ -> Expect.equal "FizzBuzz" (fizzBuzz 150)
    , test "With another number" <|
      \_ -> Expect.equal "4" (fizzBuzz 4)
    ]

