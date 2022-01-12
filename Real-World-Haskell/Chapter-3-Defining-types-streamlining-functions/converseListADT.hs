data List a = Cons a (List a) 
            | Nil
              deriving (Show)
converseFromList :: List a -> [a]
converseFromList (Cons x xs) = (x:converseFromList xs)
converseFromList Nil = []
