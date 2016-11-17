-- Step 1: define the type
-- sum :: [a] -> Num

-- Step 2: enumerate the cases
-- sum []     =
-- sum (x:xs) =

-- Step 3: define the simple cases
-- sum []     = 0
-- sum (x:xs) =

-- Step 4: define the other cases
-- sum []     = 0
-- sum (x:xs) = x + sum xs

-- Step 5: generalise and simplify
-- sum [] = 0
-- sum (x:xs) = x + sum xs


-- Step 1
-- take :: Num -> [a] -> [a]

-- Step 2
-- take 0 (x:xs) =
-- take 0 []     =
-- take n (x:xs) =
-- take n []     =

-- Step 3
-- take 0 (x:xs) = (x:xs)
-- take 0 []     = []
-- take n (x:xs) =
-- take n [] = []

-- Step 4
-- take 0 (x:xs) = (x:xs)
-- take 0 []     = []
-- take n (x:xs) = [x] ++ take (n-1) xs
-- take n [] = []

-- Step 5
-- take 0 _ = _
-- take n [] = []
-- take n (x:xs) = [x] ++ take (n-1) xs


-- Step 1
-- last :: [a] -> a

-- Step 2
-- last [_]    =
-- last (x:xs) =

-- Step 3
-- last [_]    = []
-- last (x:xs) =

-- Step 4
-- last [_]    = []
-- last (x:xs) = last xs

-- Step 5
-- last [_]    = []
-- last (x:xs) = last xs
