-- I gave up on this...it wasn't that interesting...

import Data.Char

let2int c | isLower c = ord c - ord 'a'
          | otherwise = ord c - ord 'A'

int2let n  = chr (ord 'a' + n)

shift n c = int2let ((let2int c + n) `mod` 26)

encode n xs = [shift n x | x <- xs]
