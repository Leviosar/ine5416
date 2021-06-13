main = do
    putStrLn "Informe a primeira nota"
    aString <- getLine
    let a = (read aString :: Float)
    
    putStrLn "Informe a segunda nota"
    bString <- getLine
    let b = (read bString :: Float)
    
    putStrLn "Informe a terceira nota"
    cString <- getLine
    let c = (read cString :: Float)

    print ((\x y z -> if x + y + z / 3  < 6.0 then "Reprovado" else "Aprovado") a b c)