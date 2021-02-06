# https://www.urionlinejudge.com.br/judge/en/problems/view/1024

n = int(input())

for i in range(n):
    text: str = input()
    text_list = list(text)
    
    # Shift right 3
    for index, char in enumerate(text_list):
        if char.isalpha():
            text_list[index] = chr(ord(char) + 3)

    # Reverse
    text_list = text_list[::-1]

    # Shit left 1 on post half
    for index in range(len(text_list) // 2, len(text_list)):
        text_list[index] = chr(ord(text_list[index]) - 1)
        
    print(''.join(text_list))