data Prop = Const Bool | Var Char | Not Prop | And Prop Prop | Or Prop Prop | Imply Prop Prop

type Assoc k v = [(k,v)]

find k t = head [v | (k', v) <- t, k == k']

type Subst = Assoc Char Bool

rmdups []      = []
rmdups (x:xs)  = x : filter (/= x) (rmdups xs)

eval _ (Const b)   = b
eval s (Var x)     = find x s
eval s (Not p)     = not (eval s p)
eval s (And p q)   = eval s p && eval s q
eval s (Or p q)    = eval s p || eval s q
eval s (Imply p q) = eval s p <= eval s q

vars (Const _)   = []
vars (Var x)     = [x]
vars (Not p)     = vars p
vars (And p q)   = vars p ++ vars q
vars (Or p q)    = vars p ++ vars q
vars (Imply p q) = vars p ++ vars q

bools 0 = [[]]
bools n = map (False:) bss ++ map (True:) bss
          where bss = bools (n-1)

substs p = map (zip vs) (bools (length vs))
           where vs = rmdups (vars p)

isTaut p = and [eval s p | s <- substs p]

-- isTaut (Or (Const True) (Const False))