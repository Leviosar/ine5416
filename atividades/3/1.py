# 1. Crie uma expressão Lambda que receba dois valores inteiros (x e y) e retorne 
# o resultado da soma dos dois valores. Leia os valores x e y do teclado.

x, y = map(int, input().split())

add = lambda x, y: x + y

print(add(x, y))