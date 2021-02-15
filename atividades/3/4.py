# 4. Crie uma expressão Lambda que dados dois pontos no espaço 3D, 
# (x1, y1, z1) e (x2, y2, z2), compute a distância entre eles. 
# Leia as posições dos pontos do teclado.
import math

x1, y1, z1 = map(int, input().split())
p = tuple([x1, y1, z1])

x2, y2, z2 = map(int, input().split())
q = tuple([x2, y2, z2])

distance = lambda p, q: math.sqrt(((p[0] - q[0]) ** 2) + ((p[1] - q[1]) ** 2) + ((p[2] - q[2]) ** 2))

print(distance(p, q))