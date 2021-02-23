menor :: [Int] -> Int
menor [] = 0
menor (a:b) = if a <= menor(b) then a else menor(b)

maior :: [Int] -> Int
maior [] = 0
maior (a:b) = if a >= maior(b) then a else maior(b)

diferencaMaiorMenor :: [Int] -> Int
diferencaMaiorMenor [] = 0
diferencaMaiorMenor a = (maior a) - (menor a)