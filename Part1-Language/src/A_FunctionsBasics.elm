module A_FunctionsBasics exposing (addTwo, apply, applySum3, binomialFunction, isEven, sum, wrongValue)


wrongValue =
    0


sum a b =
    a + b



{-
   TODO: Exercise 1:
   Implement the binomial function 3x + 6y + 3

   Example of usage:
     binominalFunction 2 8
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
   Implement the isEven function that from an integer it returns a boolean
   you can use the modBy function that return the result of the modulo operation against a number:
   https://package.elm-lang.org/packages/elm/core/latest/Basics#modBy

   Example of usage:
     isEven 3
-}


isEven : Int -> Bool
isEven changeMe =
    False



{-
   TODO: Exercise 3:
   Implement the addTwo function that acts like sum but just adds 2 to the number

   Example of usage:
     addTwo 6
-}


addTwo : Int -> Int
addTwo changeMe =
    wrongValue



{-
   TODO: Exercise 4:
   Implement the apply function

   The way to read this signature is:
     - the first parameter for the apply function is a function that takes an
       integer and returns an integer
     - the second parameter is an integer
     - the apply function returns and integer
   (I don't think it has any real world use)

   Example of usage:
    apply addTwo 5
-}


apply : (Int -> Int) -> Int -> Int
apply fn value =
    wrongValue



{-
   TODO: Exercise 5:
   Use the apply function above to implement applySum3
   (notice that the same could have been written without going through apply)

   Example of usage:
    applySum3 5
-}


applySum3 : Int -> Int
applySum3 value =
    apply (sum 3) wrongValue
