data Expr = Val Int | Add Expr Expr deriving Show

folde f g (Val x) = f x
folde f g (Add a b) = g (folde f g a) (folde f g b)

eval (Val x) = x
eval (Add a b) = folde id (+) (Add a b)

size (Val x) = 1
size (Add a b) = folde (const 1) (+) (Add a b)