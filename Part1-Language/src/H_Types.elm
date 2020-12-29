module H_Types exposing (..)

-- Types need to be explained. e.g. boolean
-- type Bool
--     = True
--     | False
-- or comparison
--
-- Suit


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



-- Pattern matching with types
