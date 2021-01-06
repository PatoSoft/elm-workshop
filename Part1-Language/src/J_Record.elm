module J_Record exposing (..)

{-
   TODO: Exercise 1

   Implement person, that just returns the equivalent of this ruby code:
     def person
       {
         name: 'L',
         surname: 'Lawliet',
         nickname: 'Ryuzaki'
       }
     end
-}


person =
    {}



{-
   TODO: Exercise 2

   Implement readMaybeNickname that reads the nickname from a Maybe record containing the field nickname
   When there is no record the function should return an empty string

-}


readMaybeNickname : Maybe { name : String, nickname : String } -> String
readMaybeNickname value =
    ""
