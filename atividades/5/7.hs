alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

getNome :: (Int, String, Float) -> String
getNome (a,b,c) = b

getNota :: (Int, String, Float) -> Float
getNota (a,b,c) = c

getPrimeiroAluno :: [(Int, String, Float)] -> (Int, String, Float)
getPrimeiroAluno (a:_) = a

gerarPares :: [(Int, String, Float)] -> [(Int, String, Float)] -> [((Int, String, Float),(Int, String, Float))] 
gerarPares l1 l2 = [(a,b) | a <- l1, b <- l2, a /= b]

regraAprovacao :: (Int, String, Float) -> Bool
regraAprovacao aluno = (getNota aluno) >= 6.0

aprovados :: [(Int, String, Float)] -> [String]
aprovados alunos = map getNome (filter regraAprovacao alunos)

aprovados2 :: [(Int, String, Float)] -> [String]
aprovados2 alunos = [ getNome aluno | aluno <- alunos, regraAprovacao aluno]

main = do
    print (aprovados alunos)
    print (aprovados2 alunos)
    print (gerarPares alunos alunos)