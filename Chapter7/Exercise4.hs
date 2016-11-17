-- Without foldl...
--dec2int xs = sum [w*n | (w,n) <- zip weights (reverse xs)]
--           where weights = iterate (*10) 1

-- With foldl...
--dec2int = foldl (\x y -> x + 10*y) 0

-- Never got this one to actually compile :(
