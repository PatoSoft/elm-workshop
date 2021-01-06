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



{-
   TODO: Exercise 4

   Implement updatePointPosition, that takes a MovingPoint and a timeDelta (float) value

   The idea is that the x and the y will be updated based on the time delta and the vector coordinates like so:

   newX = x + vector.x * timeDelta
   newY = y + vector.y * timeDelta

-}
{-
   TODO: Exercise 5

   Implement distanceFromOrigin for a point, this time by using the pattern matching on the moving point parameter.

   The syntax for the pattern matching is the following:

     fullName : Person ->String
     fullName {name, surname} =
       name ++ surname

   the calculation in pseudo-code should be

     square root ( x ^ 2 + y ^ 2)
-}
