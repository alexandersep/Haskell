-- file: Documents/Programming/haskell/Real-World-Haskell/Chapter-1-Getting-Started/LC.hs
-- lines beginning with "--" are comments.

main = interact lineCount 
    where lineCount input = show (length (lines input)) ++ "\n"
