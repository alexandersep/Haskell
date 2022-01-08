-- file: Documents/Programming/haskell/Real-World-Haskell/Chapter-1-Getting-Started/CC.hs
-- lines beginning with "--" are comments.

main = interact charCount 
    where charCount input = show (length input) ++ "\n"
