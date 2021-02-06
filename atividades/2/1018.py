# https://www.urionlinejudge.com.br/judge/en/problems/view/1018

values = [100, 50, 20, 10, 5, 2, 1]
amount = [0, 0, 0, 0, 0, 0, 0]

n = int(input())

print(n)

for index, value in enumerate(values):
    while value <= n:
        n -= value
        amount[index] += 1

for index, value in enumerate(amount):
    print(f"{value} nota(s) de R$ {values[index]},00")