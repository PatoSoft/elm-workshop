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

findSuit : Suit -> String
findSuit suit =
  ""


type ValueCard
  = Suit String

-- Pattern matching with types
