data BookInfo = Book Int String [String]
                deriving (Show)
data MagazineInfo = Magazine Int String [String]
                    deriving (Show)
myInfo = Book 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege do Moor"]
type CustomerID = Int
type ReviewBody = String

data BookReview = BookReview BookInfo CustomerID ReviewBody 
type BookRecord = (BookInfo, BookReview)

type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
                   | CashOnDelivery 
                   | Invoice CustomerID
                     deriving (Show)

bookID      (Book id title authors) = id
bookTitle   (Book id title authors) = title
bookAuthors (Book id title authors) = authors

{- We can also make a tidier version using wild card pattern
 - Note that whitespace is ignored, it merely is here for
 - the purposes of easily following that the _ replaces the 
 - information we don't care about
 -
 - bookID      (Book id _     _      ) = id
 - bookTitle   (Book _  title _      ) = title
 - bookAuthors (Book _  _     authors) = authors
 -}

nicerID      (Book id _     _      ) = id
nicerTitle   (Book _  title _      ) = title
nicerAuthors (Book _  _     authors) = authors

data Customer = Customer {
                customerID      :: CustomerID, -- type int
                customerName    :: String,
                customerAddress :: Address
               } deriving (Show)
{- This is exactly identical to the example from above
 -
 - data Customer = Customer Int String [String]
 -                 deriving (Show)
 - customerID :: Customer -> Int
 - customerID (Customer id _ _) = id
 -
 - customerName :: Customer -> String
 - customerName (Customer _ name _) = name
 -
 - customerAddress :: Customer -> [String]
 - customerAddress (Customer _ _ address) = address
 -} 
customer1 = Customer 271828 "J.R. Hacker"
            ["255 Syntax Ct", 
             "Milpitas, CA 95134",
             "USA"]
customer2 = Customer {
             customerID = 271828,
             customerAddress = ["1048576 Disk Drive",
                                "Milpitas, CA 95134",
                                "USA"],
             customerName = "Jane Q. Citizen"
            }
