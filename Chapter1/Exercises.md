# Chapter 1 Exercises

1.

double (double 2)

{ applying outer double }

 = (double 2) + (double 2)

{ applying left double }

 = (2 + 2) + (double 2)

{ applying right double }

 = (2 + 2) + (2 + 2)

{ applying left + }

= 4 + (2 + 2)

{ applying right + }

 = 4 + 4

{ applying + }

 = 8

2.

sum [x]
 = x + sum []
 = x + 0
 = x

3.

product []      = 0
product (n:ns)  = n * product ns

4.

qsort larger ++ [x] ++ qsort smaller

5.

You would lose any duplicates. If x = 2, taking a < x would result in [1, 1] and b > x would result in [3] and when concatenated together you would get [1, 1, 2, 3], which has one less element.
