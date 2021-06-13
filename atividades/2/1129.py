# https://www.urionlinejudge.com.br/judge/en/problems/view/1129

questions = int(input())
alternatives = ["A", "B", "C", "D", "E"]

while questions != 0:
    for i in range(questions):
        values = list(map(int, input().split()))
        marked = 0
        marked_index = 0
        for index, value in enumerate(values):
            if value <= 127:
                marked += 1
                marked_index = index

        if marked > 1 or marked == 0:
            print("*")
        else:
            print(alternatives[marked_index])

    questions = int(input())