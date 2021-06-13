busca :: [Int] -> Int -> Bool
busca [] _ = False
busca (a:b) query = if a == query then True else (busca b query)