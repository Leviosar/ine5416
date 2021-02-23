type Nome = String
type Disciplina = String
type Notas = [Float]
type Aluno = (Nome, Disciplina, Notas)

aluno :: Int -> Aluno
aluno 1 = ("A", "INE5414", [6.0, 7.5, 8.2])
aluno 2 = ("B", "INE5417", [5.0, 3.5, 10.0])
aluno 3 = ("C", "INE5412", [10.0, 10.0, 10.0])

mediaAritmetica :: [Float] -> Float
mediaAritmetica lista = sum lista / fromIntegral(length lista)

getNotas :: Aluno -> [Float]
getNotas (nome, disciplinas, notas) = notas

getMediaAluno :: Int -> Float
getMediaAluno n = mediaAritmetica (getNotas (aluno n))

getMediaAluno' :: Aluno -> Float
getMediaAluno' n = mediaAritmetica (getNotas n)

getMediaTurma :: [Aluno] -> Float
getMediaTurma alunos = mediaAritmetica (map getMediaAluno' alunos)

getNome :: Aluno -> String
getNome (nome, disciplinas, notas) = nome

main = do
    print (getNome (aluno 1))
    print (getMediaAluno 1)
    print (getMediaTurma [aluno i | i <- [1..3]])
    