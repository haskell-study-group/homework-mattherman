third1 xs = head (tail (tail xs))

third2 xs = xs!!2

third3 (a:b:c:_) = c
