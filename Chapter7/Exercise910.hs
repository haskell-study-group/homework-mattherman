-- Exercise 9

altMap _ _ [] = []
altMap f g (x:xs) = f x : altMap g f xs


-- Exercise 10

sub9 = map (\x -> if x > 9 then x - 9 else x)
luhnSum = sum . sub9 . altMap id (*2) . reverse
luhn xs = luhnSum xs `mod` 10 == 0