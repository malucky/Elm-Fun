module FirstFactorial.Solution (solve) where

import List


solve: Int -> Int
solve int =
    if int < 1 then int else List.product [1..int]

{- alternatives
    // replacing List.product with verbose foldr
    solve int =
        if int < 1 then int else List.foldr (*) 1 [1..int]
    // recursive
    solve int =
        if int < 2 then int else int * solve (int - 1)
-}



