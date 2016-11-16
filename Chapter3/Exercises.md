# Chapter 3 Exercises

1.

[Char]
(Char, Char, Char)
[(Bool, Char)]
([Bool], [Char])
[[a] -> [a]]

2.

bools = [True, False]
nums = [[1,2],[3,4]]
add a b c = 1
copy a = (a,a)
apply f x = f x

3.

second :: [a] -> a
swap :: (a, b) -> (b, a)
pair :: a -> b -> (a, b)
double :: a -> a
palindrome :: [a] -> Bool
twice (a -> a) -> (a -> (a -> a))

4.

second :: [a] -> a
swap :: (t, t1) -> (t1, t)
pair :: t -> t1 -> (t, t1)
double :: Num a => a -> a
palindrome :: Eq a => [a] -> Bool
twice :: (t -> t) -> t -> t

5. The compiler cannot know for sure that the two functions will return the same result with the same parameters since the range of possible parameters is not finite.
The only way two functions could be equal is if their complete definition is identical.
