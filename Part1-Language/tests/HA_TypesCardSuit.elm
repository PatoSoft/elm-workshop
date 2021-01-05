module HA_TypesCardSuit exposing (suite)

{-
   TODO: I need help here :D
   Elm is a strongly typed language, and has an amazing static analiser.
   Those two things allow you to develop and refactor big pieces of code with the compiler supporting you in the process and ensuring the implementation is sound.
   You can imagine having a complex application in javascript, adding a parameter to a function and getting an error in runtime, in this scenario, in elm, the code would simply not compile.

   But what if you want to ensure that the code works with user input/data from apis and all other dynamic values/checks you could have in the code?
   Well you can define your own types.
   Let's imagine you want to have your own type to handle yes and no response, the definition would be:

     type YesAndNo
       = Yes
       | No
       | Either

   In this case the YesAndNo type has 2 variants.
   You can then create functions to 'translate' input strings in the type you need and back

     yesAndNoFromString : String -> YesAndNo
     yesAndNoFromString text =
       case text in
         "yes" -> Yes
         "no" -> No
         "either" -> Either

     yesAndNoToString : YesAndNo -> String
     yesAndNoToString value =
       case value in
         Yes  -> "yes"
         No -> "no"
         Either -> "either"

   As you can notice you can also use the value types declared like that in a case condition

   Let's implement the basic card suits in the src/H_Types.elm file and the relative conversion functions
-}

import Expect exposing (..)
import H_Types exposing (..)
import Test exposing (..)


suite =
    describe "stringToSuit"
        [ test """
      when "Hearts" is passed returns Hearts
      """ <|
            \_ -> Expect.equal Hearts (stringToSuit "Hearts")
        , test """
      when "Clubs" is passed returns Clubs
      """ <|
            \_ -> Expect.equal "Clubs" (suitToString (stringToSuit "Clubs"))
        , test """
      when "Spades" is passed returns Spades
      """ <|
            \_ -> Expect.equal "Spades" (suitToString (stringToSuit "Spades"))
        , test """
      when "Diamonds" is passed returns Diamonds
      """ <|
            \_ -> Expect.equal "Diamonds" (suitToString (stringToSuit "Diamonds"))
        , test """
      when "Something odd" is passed returns Diamonds
      """ <|
            \_ -> Expect.equal "Diamonds" (suitToString (stringToSuit "Something odd"))
        ]
