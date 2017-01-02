main = print (solutions [1,3,7,10,25,50] 765)



data Op = Add | Sub | Mul | Div

instance Show Op where
    show Add = "+"
    show Sub = "-"
    show Mul = "*"
    show Div = "/"

valid Add _ _ = True
valid Sub x y = x > y
valid Mul _ _ = True
valid Div x y = x `mod` y == 0

apply Add x y = x + y
apply Sub x y = x - y
apply Mul x y = x * y
apply Div x y = x `div` y

data Expr = Val Int | App Op Expr Expr

instance Show Expr where
    show (Val n)      = show n
    show (App o l r)  = brak l ++ show o ++ brak r
                        where
                           brak (Val n) = show n
                           brak e       = "(" ++ show e ++ ")"

values (Val n)      = [n]
values (App _ l r)  = values l ++ values r

eval (Val n)      = [n | n > 0]
eval (App o l r)  = [apply o x y | x <- eval l, y <- eval r, valid o x y]

subs []      = [[]]
subs (x:xs)  = yss ++ map (x:) yss
               where yss = subs xs

interleave x []      = [[x]]
interleave x (y:ys)  = (x:y:ys) : map (y:) (interleave x ys)

perms []      = [[]]
perms (x:xs)  = concat (map (interleave x) (perms xs))

choices = concat . map perms . subs

split []     = []
split [_]    = []
split (x:xs) = ([x],xs) : [(x:ls,rs) | (ls,rs) <- split xs]

exprs []    = []
exprs [n]   = [Val n]
exprs ns    = [e | (ls,rs) <- split ns, l <- exprs ls, r <- exprs rs, e <- combine l r]

combine l r = [App o l r | o <- ops]
              where ops = [Add, Sub, Mul, Div]

solutions ns n = [e | ns' <- choices ns, e <- exprs ns', eval e == [n]]