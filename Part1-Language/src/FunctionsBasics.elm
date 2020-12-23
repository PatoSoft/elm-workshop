module FunctionsBasics exposing (..)

badIntValue = 0

-- This should be explained using the repl
sum a b = 
  a + b


-- Functions always return a single value, you can define temporary values in a let block
-- implement the function 3x + 6Y + 3

binomialFunction x y =
  let
      x_part = 0

      y_part = 0
  in
      0


-- Currying: you can use the function you declared before and re-use it here
sum2 changeMeIfYouWant =
  changeMeIfYouWant 


increase : Int -> Int
increase a = 
  a + 1


