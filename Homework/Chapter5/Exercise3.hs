grid m n = [(x, y) | x <- [0..m], y <- [0..n]]

square a = [(x,y) | (x,y) <- grid a a, x /= y]
