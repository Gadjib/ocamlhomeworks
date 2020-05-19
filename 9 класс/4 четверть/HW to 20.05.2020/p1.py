import re

with open("p1.txt") as f:
    content = f.readlines()
for x in content:
    g = re.match(r'^([0-9]+.[0-9]+.[0-9]+.)(.+)$', x)
    if g:
        print(x)