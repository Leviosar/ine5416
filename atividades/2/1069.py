x = "<..><.<..>>"

x = x.replace(".", "")
total = 0

while x.find("<>") >= 0:
    total += 1
    x = x.replace("<>", "")

print(total)