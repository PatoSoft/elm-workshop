module K_List exposing (..)

{-
   TODO: Exercise 1
   Implement collect3 function
   https://package.elm-lang.org/packages/elm/core/latest/List
-}


collect3 : item -> item -> item -> List item
collect3 a b c =
    [ a, b, c ]



{-
   TODO: Exercise 2
   Implement tailTip function
   https://package.elm-lang.org/packages/elm/core/latest/List
-}


tailTip : List item -> Maybe item
tailTip items =
    case items of
        [] ->
            Nothing

        [ last ] ->
            Just last

        _ :: rest ->
            tailTip rest



{-
   TODO: Exercise 3
   Implement tailTip function
   https://package.elm-lang.org/packages/elm/core/latest/List
-}


wordsAndLengths : String -> List ( String, Int )
wordsAndLengths sentence =
    List.map (\word -> ( word, String.length word )) (String.split " " sentence)



{-
   TODO: Exercise 4
   Implement myMap function by using pattern matching against a list and re-implementing map

   Pattern matching on list can be used like this:

     tailTip2 : List item -> Maybe item
     tailTip2 items =
         case items of
             head :: [] ->
                 Just head

             head :: rest ->
                 tailTip2 rest

             _ ->
                 Nothing

   https://package.elm-lang.org/packages/elm/core/latest/List
-}


tailTip2 : List item -> Maybe item
tailTip2 items =
    case items of
        head :: [] ->
            Just head

        head :: rest ->
            tailTip2 rest

        _ ->
            Nothing


myMap : (item -> val) -> List item -> List val
myMap fun items =
    List.map fun items
