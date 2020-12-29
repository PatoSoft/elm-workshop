module GA_GenericTernaryOperator exposing (suite)
{-
Before we created a ternary operator to mimic the elvis operator 

  <condition> ? <value if true> : <value if false>

But the way we created it was only allowing strings to be passed in, you can remember the signature was:

  ternaryOperator : Bool -> String -> String -> String

What if we want to create something more flexible? like a ternary operator that can accept Int or Float as well as Strings?
Elm allows you to define generic parameters, meaning parameters that don't have a specific type associated with them but it's up to the caller of the function to make sure they are valid.
The main syntax difference is that 'generic' parameters are lowercase, while types would be uppercase:
for instance we can define something like this:

  myFunction : (aValue -> Int) -> aValue -> Int

This function takes as first argument a function that takes <aValue> and returns an int, <aValue> of the same type and returns an Int

You can have multiple generic types in a declaration and they would be named differently e.g.

  myOtherFunction : (aValue -> Int) -> (anotherValue -> int) -> aValue -> anotherValue -> Int

Now let's try to re-define the ternary operator to accept any types as a parameter, open the file:
G_GenericParameters.elm to implement it
-}

import G_GenericParameters exposing (..)
import Test exposing (..)
import Expect exposing (..)

suite =
  describe "ternaryOperator"
  [ describe "when passing a String"
    [test """
        when True is passed returns the first argument
        """ <|
          \_ -> Expect.equal "a" (ternaryOperator True "a" "b")
    , test """
        when False is passed returns the second argument
        """ <|
          \_ -> Expect.equal "b" (ternaryOperator False "a" "b")
    ]
    ,
    describe "when passing an Int"
    [test """
        when True is passed returns the first argument
        """ <|
          \_ -> Expect.equal 1 (ternaryOperator True 1 10)
    , test """
        when False is passed returns the second argument
        """ <|
          \_ -> Expect.equal 10 (ternaryOperator False 1 10)
    ]
    ,
    describe "when passing an Tuple"
    [test """
        when True is passed returns the first argument
        """ <|
          \_ -> Expect.equal ("value", True) (ternaryOperator True ("value", True) ("value", False))
    , test """
        when False is passed returns the second argument
        """ <|
          \_ -> Expect.equal ("value", False) (ternaryOperator False ("value", True) ("value", False))
    ]
  ]
