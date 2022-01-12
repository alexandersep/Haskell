-- works the same as the sumsUp.hs file
goodExample (x:xs) = x + goodExample xs
goodExample _      = 0
