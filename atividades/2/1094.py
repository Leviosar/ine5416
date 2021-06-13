# https://www.urionlinejudge.com.br/judge/en/problems/view/1094

inserts = int(input())

subjects = {"C": 0, "R": 0, "S": 0}

for i in range(inserts):
    amount, animal = input().split()
    subjects[animal] += int(amount)

total = sum(subjects.values())

print(f"Total: {total} cobaias")
print(f"Total de coelhos: {subjects['C']}")
print(f"Total de ratos: {subjects['R']}")
print(f"Total de sapos: {subjects['S']}")
print(f"Percentual de coelhos: {subjects['C'] / total * 100:.2f} %")
print(f"Percentual de ratos: {subjects['R'] / total * 100:.2f} %")
print(f"Percentual de sapos: {subjects['S'] / total * 100:.2f} %")