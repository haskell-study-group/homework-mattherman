myAnd [True] = True
myAnd (x:xs) | x == False  = False
             | otherwise   = myAnd xs

myConcat [] = []
myConcat (x:xs) = x ++ myConcat xs

-- Couldn't get this one to work
--myReplicate 0 _ = []
--myReplicate n x | n > 0 = [x] ++ myReplicate (n-1, x)

nth (x:_) 0 = x
nth (x:xs) n = nth xs (n-1)

myElem _ [] = False
myElem a (b:xs) | a == b     = True
                | otherwise  = myElem a xs
