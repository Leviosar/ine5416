primeiros :: Int -> [t] -> [t]
primeiros n _ | n <= 0 = []
primeiros _ [] = []
primeiros n (a:b) = a : take (n-1) b