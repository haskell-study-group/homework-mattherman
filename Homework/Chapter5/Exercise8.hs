find k t = [v | (k', v) <- t, k == k']

positions x xs = find x (zip xs [0..])
