data Expr = Val Int | Add Expr Expr | Mult Expr Expr

type Cont = [Op]

data Op = EVAL Expr | ADD Int | MULT Int

eval (Val n) c    = exec c n
eval (Add x y) c  = eval x (EVAL y : c)
eval (Mult x y) c = eval x (EVAL y : c)

exec [] n            = n
exec (EVAL y : c) n  = eval y (MULT n : c)
exec (ADD n : c) m   = exec c (n+m)
exec (MULT n : c) m  = exec c (n*m)

value e = eval e []

-- value (Add (Val 1) (Val 3)) = eval (Add (Val 1) (Val 3)) []
-- eval (Add (Val 1) (Val 3)) [] = eval (Val 1) (EVAL (Val 3) : [])
-- eval (Val 1) [EVAL (Val 3)] = exec [EVAL (Val 3)] 1
-- exec [EVAL (Val 3)] 1 = eval (Val 3) (ADD 1 : [])
-- eval (Val 3) [ADD 1] = exec [ADD 1] 3
-- exec [ADD 1] 3 = exec [] (1+3)
-- exec [] 4 = 4