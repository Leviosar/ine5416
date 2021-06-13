inverte :: [t] -> [t]
inverte [] = []
inverte (a:b) = (inverte b) ++ [a]