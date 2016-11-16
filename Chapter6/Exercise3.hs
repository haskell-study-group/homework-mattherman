-- Theoretical solution w/ operator
--m ^ 0 = 1
--m ^ n = m * m^(n-1)

-- Real, working solution
expnt m 0 = 1
expnt m n = m * expnt m (n-1)

-- 3 ^ 2
-- 3 * (3 ^ (2-1))
-- 3 * (3 * (3 ^ (1-1))
-- 3 * (3 * (3 * (3 ^ 0)))
-- 3 * (3 * (3 * (1)))
-- 3 * 3 * 3 * 1
-- 9
