-- file: Documents/Programming/haskell/Real-World-Haskell/Chapter-1-Getting-Started/WC.hs
-- lines beginning with "--" are comments.

main = interact wordCount 
    where wordCount input = show (length (words input)) ++ "\n"
