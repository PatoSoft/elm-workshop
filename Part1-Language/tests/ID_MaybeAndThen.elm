module ID_MaybeAndThen exposing (suite)

{-
   We saw map and how useful it is, but what if we use map for a function that can also return a maybe?

   What if, for instance, our parseStringToIntOrZero would take a Maybe String value as an input?

   We could use Maybe.map to then parse the string like this:

     parseStringToInt value =
       Maybe.map String.toInt value

   But executing it in the elm repl the compiler will tell us the function signature is Maybe String -> Maybe (Maybe Int)
   (which has an extra level of maybe)

   For this reason we would use Maybe.andThen https://package.elm-lang.org/packages/elm/core/latest/Maybe#andThen

   Open src/Part1-Language/src/I_Maybes.elm and implement parseMaybeStringToIntOrZero
-}

import Expect exposing (..)
import I_Maybes exposing (..)
import Test exposing (..)


suite =
    describe "parseMaybeStringToIntOrZero"
        [ test """
      when Just "10" is passed returns 10
      """ <|
            \_ -> Expect.equal 10 (parseMaybeStringToIntOrZero (Just "10"))
        , test """
      when Nothing is passed returns 0
      """ <|
            \_ -> Expect.equal 0 (parseMaybeStringToIntOrZero Nothing)
        , test """
      when Just "ABC" is passed returns 0
      """ <|
            \_ -> Expect.equal 0 (parseMaybeStringToIntOrZero (Just "ABC"))
        ]
