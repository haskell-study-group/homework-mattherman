-- Exercise 7

import Data.Char

type Bit = Int

bin2int bits = sum [w*b | (w,b) <- zip weights bits]
               where weights = iterate (*2) 1

int2bin 0 = []
int2bin n = n `mod` 2 : int2bin (n `div` 2)

make8 bits = take 8 (bits ++ repeat 0)

getParityBit xs = numOnes `mod` 2
                  where numOnes = length [a | a <- xs, a == 1]

addParity xs = xs ++ [getParityBit xs]

parityValid xs = numOnes `mod` 2 == last xs
                 where numOnes = length [a | a <- init xs, a == 1]

checkParity xs | parityValid xs = init xs
               | otherwise      = error "Parity bit was incorrect"

encode = concat . map (addParity . make8 . int2bin . ord)

chop9 [] = []
chop9 bits = take 9 bits : chop9 (drop 9 bits)

decode = map (chr . bin2int . checkParity) . chop9

channel = id

transmit = decode . channel . encode


-- Exercise 8

faultyChannel = tail

faultyTransmit = decode . faultyChannel . encode