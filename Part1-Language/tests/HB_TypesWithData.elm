module HB_TypesWithData exposing (suite)

{-
   We saw how to define our custom types, that combined with the compiler static checker is one of elm most powerful features.

   But by what we saw so far custom types are basically a 'powered up' enum type you can see in other languages..
   Well you can define custom types also with data

   Let's say you want to model the different types of cards in a deck, you can have something like this

     type CardValue
         = Ace
         | Two
         [....]
         | King

      type DeckCard
         = Hearts CardValue
         | Clubs CardValue
         | Diamonds CardValue
         | Spades CardValue
         | RedJoker
         | BlackJoker

    You can then create a new DeckCard with this code:

      Hearts Ace

    And also use it in a case statement like

    printCard card=
      case card of
        Hearts Ace -> "Ace of Hearts"

    You can also observe that the 'value' does not have to be shared across variants, the two jokers don't have a card value in this case.
    There is no limit on the number/types of values either. We could, for instance have modelled it like this

      type DeckCard
        = Hearts String
        | Clubs String
        [...]

    One instance where this is often used is for error handling and state management. With the power of the compiler this allows to ensure states are handled correctly through complex applications.

    Let's try to implement a functions that prints the state of our remote loading profile code

-}

import Expect exposing (..)
import H_Types exposing (..)
import Test exposing (..)


suite =
    describe "printProfile"
        [ test """
      when Loading is passed returns Loading
      """ <|
            \_ -> Expect.equal "Loading" (printProfile Loading)
        , test """
      when Loaded("Ken", "Fassone") is passed returns "Welcome back Ken Fassone"
      """ <|
            \_ -> Expect.equal "Welcome back Ken Fassone" (printProfile (Loaded ( "Ken", "Fassone" )))
        , test """
      when Error("Not found", "No profile found") is passed returns "There was an error loading your profile: Not found"
      """ <|
            \_ -> Expect.equal "There was an error loading your profile: Not found" (printProfile (Error "Not found" "No profile found"))
        ]
