xAll _ [] = True
xAll f (x:xs) | not (f x)    = False
              | otherwise    = all f xs

xAny f [] = False
xAny f (x:xs) | f x == True = True
              | otherwise   = any f xs

xTakeWhile f [] = []
xTakeWhile f xs = filter f xs

xDropWhile f [] = []
xDropWhile f xs = filter (not . f) xs
