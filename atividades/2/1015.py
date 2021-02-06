# https://www.urionlinejudge.com.br/judge/en/problems/view/1014

import math

p = list(map(float, input().split()))
q = list(map(float, input().split()))

firstSquare = (p[0] - q[0]) ** 2
lastSquare = (p[1] - q[1]) ** 2

distance = math.sqrt(firstSquare + lastSquare)

print(f"{distance:.4f}")