data Nat = Zero | Succ Nat deriving Show

add Zero n = n
add (Succ m) n = Succ (add m n)

mult Zero n = Zero
mult (Succ m) n = add n (mult m n)