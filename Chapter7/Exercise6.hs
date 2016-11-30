unfold p h t x | p x        = []
               | otherwise  = h x : unfold p h t (t x)

chop8 = unfold (null) (take 8) (drop 8)

xMap f = unfold (null) (f . head) (tail)

xIterate f = unfold (\x -> False) id f