module AB_FunctionsSumWithCurrying exposing (suite)

import A_FunctionsBasics exposing (..)
import Test exposing (..)
import Expect exposing (..)

suite =
  test """
  Currying is a powerful tool in functional programming languages.
  The basic principles is that when the function takes multiple arguments
  you can pass those arguments separately and keep the returning function.
  It's often used to keep track of settings or wait to do some computation 
  at a later stage.

  Take for example an 'add' function in javascript like:

  function add(a, b) {
    return a + b;
  }

  And you would call it with add(1, 3);

  The curried version would be:

  function addcurry(a) {
    return function (b) {
      return a + b;
    }
  }

  And you would call it with addcurry(1)(3)

  But in the second case you can save the curried function in a variable to use later
  var add2 = addcurry(2)
  ....
  add2(10)

  Elm automatically curries everything so if a function accepts 3 arguments you can do

  threeElementSum a b c = 
    a + b + c

  and invoke it with:

  twoElementSum = threeElementSum 0

  elm will execute the function when the other two arguments are passed in

  """ <| 
    \_ -> Expect.equal 7 (sum2 5)
