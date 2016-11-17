xMap f = foldr (\x xs -> (f x):xs) []

xFilter f = foldr (\x xs -> if f x then x:xs else xs) []
