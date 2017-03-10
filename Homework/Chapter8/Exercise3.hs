data Tree a = Leaf a | Node (Tree a) (Tree a) deriving Show

leaves (Leaf x) = 1
leaves (Node a b) = leaves a + leaves b

-- This is what I had before checking the back of the book to see if I was right
-- balanced (Node a b) = leaves a == leaves b

-- The correct answer is:
balanced (Leaf x) = True
balanced (Node a b) = abs (leaves a - leaves b) <= 1 && balanced a && balanced b