module A_FunctionsBasics exposing (..)


wrongValue =
    0


sum a b =
    a + b



{-
   TODO: Exercise 1:
   Implement the binomial function
   3x + 6y + 3
-}


binomialFunction x y =
    let
        xPart =
            0

        yPart =
            0
    in
    wrongValue



{-
   TODO: Exercise 2:
   Implement the add2 function that acts like sum but just adds 2 to the number
-}


add2 changeMeIfYouWant =
    wrongValue



{-
   TODO: Exercise 3:
   Implement the isEven function that from an integer it returns a boolean
   you can use the modBy function that return the result of the modulo operation against a number:
   https://package.elm-lang.org/packages/elm/core/latest/Basics#modBy
-}


isEven : Int -> Bool
isEven _ =
    False



{-
   TODO: Exercise 4:
   Implement the apply function

   apply : (Int -> Int) -> Int -> Int

   The way to read this signature is:
     - the first parameter for the apply function is a function that takes an
       integer and returns an integer
     - the second parameter is an integer
     - the apply function returns and integer
   (I don't think it has any real world use)
-}


apply : (Int -> Int) -> Int -> Int
apply function value =
    wrongValue



{-
   TODO: Exercise 5:
   Use the apply function above to implement applySum3
   (notice that the same could have been written without going through apply)
-}


applySum3 : Int -> Int
applySum3 value =
    apply (sum 3) wrongValue
