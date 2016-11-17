halve xs = [take halfLength xs, drop halfLength xs]
             where halfLength = length xs `div` 2

merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) | x <= y     = [x] ++ merge xs (y:ys)
                    | otherwise  = [y] ++ merge (x:xs) ys

msort [] = []
msort [x] = [x]
msort xs = merge (msort (head splits)) (msort (last splits))
               where splits = halve xs
