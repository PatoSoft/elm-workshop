module AE_FunctionsCallingAsParameters exposing (suite)

{-
   We just saw how to create a function that accepts a function as a parameter,
   but how to use it?

   The signature of apply is:

   apply : (Int -> Int) -> Int -> Int

   and it takes one function that takes an int and returns an int

   the code you will see looks like this:

     apply (sum 3) wrongValue

   there are 2 things to note here:
   - The parhentesis around sum 3 are there to tell the compiler to execute that code before
     executing the code for apply.
     as you know elm does not use parhentesis around arguments of functions like in javascript
     nor uses commas to separate the values like in ruby
     so if the compiler sees this

       apply sum 3 wrongValue

     it might think apply takes a function, and 2 int, and would be confused because it also
     knows that apply takes only 2 arguments.
     Due to this it would be 'upset' with the implementation.

   - (sum 3) uses 'currying' against the sum function, sum takes 2 Int and returns and Int
     in this case we pass only one argument, so the 'remaining' function will take 1 Int and
     return 1 Int

   Implement applySum3 in the file src/A_FunctionsBasics.elm
-}

import A_FunctionsBasics exposing (..)
import Expect exposing (..)
import Test exposing (..)


suite =
    test """
  Functions sometimes can be passed as parameters
  """ <|
        \_ -> Expect.equal 5 (applySum3 2)
