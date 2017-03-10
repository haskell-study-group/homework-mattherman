-- Stacks
-- Define a new type Stack a with the following methods:
-- s_init :: Stack a
-- s_empty :: Stack a -> Bool
-- s_push :: a -> Stack a -> Stack a
-- s_pop :: Stack a -> (Maybe a, Stack a)
-- s_peek :: Stack a -> a

-- let x = s_init :: Stack String
-- let y = push "Hello" x
-- peek y
-- let z = push "There" x
-- y
-- z

data Stack a = Stack [a] deriving Show

s_init = Stack []

s_empty (Stack []) = True
s_empty _ = False

s_push b (Stack a) = Stack ([b] ++ a)

s_pop (Stack []) = (Nothing, Stack [])
s_pop (Stack a) = (Just (head a), Stack (tail a))

s_peek (Stack a) = head a

-- Queue (with amortized O(1) queue/dequeue)
-- To make this amortized O(1) you need to maintain two lists, a forward list and a reverse list
-- You add things to the end of the forward list when queueing, and when dequeueing you reverse
-- that list and copy it to the reverse list and remove the first element.
-- Continue popping things from there until it is empty, and then do the reverse and replace again.