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



{-
   TODO: Exercise 3

   Implement createMovingPoint, that returns from 4 values a point with this ruby structure

   { x: 1.5, y: 2.5, vector: {x: 7.5, y: 10.3} }

   define also separate type alias for MovingPoint and Vector

-}


type alias MovingPoint =
    {}


createMovingPoint : Float -> Float -> Float -> Float -> MovingPoint
createMovingPoint x y vx vy =
    {}
