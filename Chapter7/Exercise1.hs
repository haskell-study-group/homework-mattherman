p x = x > 0
f x = x*2

exOne xs = map f (filter p xs)
