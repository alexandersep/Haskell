-- Interpretation of lastButOne
-- If list is 2 or greater, then second last item
-- If list is 1 then the last but One element would be head
{- If list is 0 or less than lastButOne should return an 
   error and instead of letting head return the error -}
lastButOne :: [a] -> a
lastButOne xs = if length xs == 0 
                then error "empty list"
                else if length xs == 1
                then error "no element before a single element"
                else if length xs <= 2
                then head xs
                else lastButOne (tail xs)
