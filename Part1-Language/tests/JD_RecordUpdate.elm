module JD_RecordUpdate exposing (suite)

{-
   We saw how to define a record, but how can we update one?

   it's pretty easy if I have a record I can just

     updateX : MovingPoint -> Float -> MovingPoint
     updateX point value =
       let
           newPoint = {point | x = value }
       in
           newPoint

   Notice how I need to create a new variable to hold the result as explained before = is not an assignment, it is a statement
   It's however possible to do the same in a single statement:

     updateX point value =
       {point | x = value }

   Now let's work on a function updatePointPosition to update the MovingPoint

   Open src/Part1-Language/src/J_Record.elm and implement updatePointPosition
-}

import Expect exposing (..)
import J_Record exposing (..)
import Test exposing (..)


movingPoint =
    { x = 0.5
    , y = 0.25
    , vector =
        { x = 1.0
        , y = 2.0
        }
    }


suite =
    describe "updatePointPosition"
        [ test """
      when timeDelta of 4.0 is passed the x position is 4.5
      """ <|
            \_ -> Expect.within (Absolute 0.0000001) 4.5 (updatePointPosition movingPoint 4.0).x
        , test """
      when timeDelta of 4.0 is passed returns y position to 8.25
      """ <|
            \_ -> Expect.within (Absolute 0.0000001) 8.25 (updatePointPosition movingPoint 4.0).y
        , test """
      when timeDelta of 4.0 is passed returns the original vector x
      """ <|
            \_ -> Expect.within (Absolute 0.0000001) 1.0 (updatePointPosition movingPoint 4.0).vector.x
        , test """
      when timeDelta of 4.0 is passed returns the original vector y
      """ <|
            \_ -> Expect.within (Absolute 0.0000001) 2.0 (updatePointPosition movingPoint 4.0).vector.y
        ]
