module A_FunctionsBasics exposing (..)


wrongValue =
    0


sum a b =
    a + b


binomialFunction x y =
    let
        x_part =
            0

        y_part =
            0
    in
    wrongValue



-- Currying: you can use the function you declared before and re-use it here


sum2 changeMeIfYouWant =
    wrongValue



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
