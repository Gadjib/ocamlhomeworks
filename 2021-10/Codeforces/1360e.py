n=int(input())
l=[]
"""l=[[]]*n
for i in range(n):
    for j in range(int(input())):
        l[i]+=[list(input())]"""
for _ in range(n):
    g=[]
    for _ in range(int(input())):
        g.append(list(input()))
    l.append(g)

print(l)
def check(l):
    b=True
    for i in range(len(l)-1):
        for j in range(len(l)-1):
            if l[i][j]=='1' and l[i+1][j]=='0' and l[i][j+1]=='0':
                b=False
    return(b)

def print_normal(b):
    if b:
        print("YES")
    else:
        print("NO")

for t in l:
    print_normal(check(t))