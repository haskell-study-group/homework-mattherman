-- In a nutshell: Using `unfold` and a custom datatype `Coin` create a function 
-- `makeChange :: Int -> [Coin]` where `makeChange n` will make change for `n` cents
-- using the normal make change algorithm (least amount of coins)

-- > makeChange 99
-- [Quarter, Quarter, Quarter, Dime, Dime, Penny, Penny, Penny, Penny]

unfold p h t x | p x       = []
               | otherwise = h x : unfold p h t (t x)

data Coin = Quarter | Dime | Nickel | Penny deriving Show

getLargestCoin n | n >= 25   = Quarter
                 | n >= 10   = Dime
                 | n >= 5    = Nickel
                 | otherwise = Penny

subtractCoin n | n >= 25   = n - 25
               | n >= 10   = n - 10
               | n >= 5    = n - 5
               | otherwise = n - 1

makeChange n = unfold (==0) getLargestCoin subtractCoin n