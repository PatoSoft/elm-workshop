module A_FunctionsBasics exposing (..)

wrongValue = 0

-- This should be explained using the repl and how to call it
sum a b = 
  a + b


-- Functions always return a single value, you can define temporary values in a let block
-- implement the function 3x + 6Y + 3

binomialFunction x y =
  let
      x_part = 0

      y_part = 0
  in
      wrongValue 


-- Currying: you can use the function you declared before and re-use it here
sum2 changeMeIfYouWant =
  sum changeMeIfYouWant 


-- TODO find a nice example for parameter argument types
isEven : Int -> Bool
isEven _ = 
  False


-- Passing function as parameters, and brace passing
-- I don't think it has any real world use

apply : (Int -> Int) -> Int -> Int
apply function value =
  wrongValue 

-- and you can call the above passing a curried function with sum 3

applySum3 : Int -> Int
applySum3 value =
  apply (sum 3) wrongValue


