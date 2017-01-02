data Maybe' a = Nothing' | Just' a

instance Eq a => Eq (Maybe' a) where
    Nothing' == Nothing'    = True
    Just' a == Just' b      = a == b
    _ == _                  = False

instance Eq a => Eq [a] where
    [] == []  = True
    a == b    = length a == length b && and [x == y | (x, y) <- zip a b]
    _ == _    = False

