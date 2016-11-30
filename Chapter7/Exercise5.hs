xCurry f = \x y -> f (x,y)

xUncurry f = \(x,y) -> f x y