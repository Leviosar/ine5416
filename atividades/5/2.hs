len :: [t] -> Int
len [] = 0
len (_:b) = 1 + (len b)

soma :: [Int] -> Int
soma [] = 0
soma (a:b) = a + (soma b)

media :: [Int] -> Float
media [] = 0.0
media a = fromIntegral (soma a) / fromIntegral(len a)