mapear :: (t -> y) -> [t] -> [y]
mapear _ [] = []
mapear funcao (a:b) = (funcao a) : (mapear funcao b)