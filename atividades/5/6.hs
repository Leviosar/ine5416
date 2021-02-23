ocorrencias :: [Int] -> Int -> Int
ocorrencias [] _ = 0
ocorrencias (a:b) query = if a == query then 1 + (ocorrencias b query) else (ocorrencias b query)