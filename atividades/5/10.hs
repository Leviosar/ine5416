filtrar :: (t -> Bool) -> [t] -> [t]
filtrar _ [] = []
filtrar funcao (a:b) = if funcao a then a : filtrar funcao b else filtrar funcao b