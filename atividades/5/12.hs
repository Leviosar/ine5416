apagar :: Int -> [t] -> [t]
apagar n lista | n <= 0 = lista
apagar _ [] = []
apagar n (a:b) = apagar (n-1) b