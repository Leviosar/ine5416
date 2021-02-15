# 2. Crie uma expressão Lambda que receba três notas de um aluno (a, b, c), 
# calcule a média e retorne se o aluno foi aprovado ou reprovado. 
# Para um aluno ser aprovado, ele deve possuir nota igual ou superior a 6. 
# Leia as notas dos alunos do teclado.

a, b, c = map(int, input().split())

evaluate = lambda a, b, c: (a + b + c) / 3 >= 6 and 'Aprovado' or 'Reprovado'

print(evaluate(a, b, c))