module AA_FunctionsLetBlock exposing (suite)

{-
   Functions always return a single value, but you can define computation in a 'let block'
   in the function;

   The syntax looks like this

     myFunction x y z =
       let
           xPlusY = x + y

           zSquared = z ^ 2
       in
           xPlusY + zSquared

   note that the function above could have been written like:

     myFunction x y z =
       x + y + z ^ 2

   But it's often the case you want to declare 'variables' for readability purposes.

   implement the binomialFunction 3x + 6Y + 3 in the file src/A_FunctionsBasics.elm
-}

import A_FunctionsBasics exposing (..)
import Expect exposing (..)
import Test exposing (..)


suite =
    test """
    binomialFunction returns the expected value
    """ <|
        \_ -> Expect.equal 30 (A_FunctionsBasics.binomialFunction 5 2)
