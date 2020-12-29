module AD_FunctionsAsParameters exposing (suite)

{-
   Functions are a key part of the language, and they can be passed as parameters

   Here we will try to implement an 'apply' function, that given a function from
   Int -> Int

   and an additional argument will return the computation from the function.

   You can notice the type signature for the apply function is:

   apply : (Int -> Int) -> Int -> Int

   The way to read this signature is:
     - the first parameter for the apply function is a function that takes an
       integer and returns an integer
     - the second parameter is an integer
     - the apply function returns and integer
-}

import A_FunctionsBasics exposing (..)
import Expect exposing (..)
import Test exposing (..)


suite =
    test """
  Functions sometimes can be passed as parameters
  """ <|
        \_ -> Expect.equal 5 (apply (sum 3) 2)
