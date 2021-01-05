module H_Types exposing (..)

-- Types need to be explained. e.g. boolean
-- type Bool
--     = True
--     | False
-- or comparison
--
-- Suit
{-
   TODO: Exercise 1, Implement this
   We have stringToSuit and suitToString to implement
   We want to implement them for all suits:
   Hearts
   Clubs
   Spades
   Diamonds
   In case we receive a random string we want to return Diamonds
-}


type Suit
    = Hearts


stringToSuit : String -> Suit
stringToSuit string =
    Hearts


suitToString : Suit -> String
suitToString suit =
    ""


type ValueCard
    = Suit String



{-
   ***************************
         Types with data
   ***************************
-}


type Profile
    = Loading
    | Loaded ( String, String )
    | Error String String


remoteLoad : String -> ( String, String ) -> Profile
remoteLoad state data =
    -- The data can be modelled better, but this is just an example
    case state of
        "Loading" ->
            Loading

        "Loaded" ->
            let
                ( name, surname ) =
                    data
            in
            Loaded ( name, surname )

        "Error" ->
            let
                ( errorTitle, errorMessage ) =
                    data
            in
            Error errorTitle errorMessage

        _ ->
            Error "Response invalid" "There was a problem loading your profile"



{-
   TODO: Exercise 2, Implement this
   This function will return the following:
   When the state is:  |          Will return:
   -------------------------------------------------------
    Loading            | "Loading"
    Loaded             | "Welcome back <name> <surname>"
    Error              | "There was an error loading your profile: <error title>"

-}


printProfile : Profile -> String
printProfile profile =
    ""
