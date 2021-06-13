# 3. Crie uma expressão Lambda que resolva uma equação de segundo grau da forma ax2 + bx + c 
# utilizando a fórmula de Bhaskara. Leia os coeficientes a, b e c do teclado.

import math

a, b, c = map(int, input().split())

evaluate = lambda a, b, c: tuple([
    (- b + math.sqrt((b ** 2) - 4 * a * c)) / (2 * a), 
    (- b - math.sqrt((b ** 2) - 4 * a * c)) / (2 * a) 
])

print(evaluate(a, b, c))