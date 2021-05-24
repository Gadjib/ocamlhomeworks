from re import fullmatch
s = input()
r = "[2-7][02468]"
b = fullmatch(r,s)
if b:
    print("Yes")
else:
    print("No")