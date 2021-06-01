# Тут сборная солянка из 2-5 (не вижу смысла на 4 файла разделять)

from re import fullmatch
s = input()
r = "-?(([1-9][0-9]*)|0)+[.]?(([0-9]*[1-9])|0)?|[.](([0-9]*[1-9])|0)$"
b = fullmatch(r,s)
if b:
    print("Yes")
else:
    print("No")