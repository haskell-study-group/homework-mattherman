-- It will never exit since the values will grow more and more negative
-- and never reach zero.

fac 0 = 1
fac n | n > 0 = n * fac (n-1)
