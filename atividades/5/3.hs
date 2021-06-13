menor :: [Int] -> Int
menor [] = 0
menor (a:b) = if a <= menor(b) then a else menor(b)