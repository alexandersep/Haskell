-- recursive function does not have a base case of when the
-- list is empty
badExample (x:xs) = x + badExample xs
