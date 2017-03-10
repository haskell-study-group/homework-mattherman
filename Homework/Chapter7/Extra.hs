-- f :: (a->b) -> a -> b

-- f1 takes a function g and a value x and applies g to x
f1 g x = g x

-- f2 takes a function g and returns a lambda that takes a value x and applies g to x
f2 g = \x -> g x

-- f3 takes a function g and returns that function
f3 g = g

-- Each of these functions are functionally equivalent

-- There are likely more implementations, but they should all do similar things since Haskell eliminates the possibility of side effects