# https://www.urionlinejudge.com.br/judge/en/problems/view/1103

while True:
    startHour, startMinute, endHour , endMinute = map(int, input().split())
 
    if startHour == startMinute == endHour == endMinute == 0:
        break
    else:
        start = startHour * 60 + startMinute
        end = endHour * 60 + endMinute
        
        if(end <= start):
           end += 24 * 60
        
        print(abs(end - start))