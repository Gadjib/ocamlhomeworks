l=[]
n = int(input())
for i in range(n):
    l.append(input())

def parse_string(s):
    p = s.rsplit(' ')
    return ([p[0], p[1]])

def apply(s):
    ans=''
    for c in s:
        ans = ans + str((int(c)+1))
    return(ans)

def main(n, m):
    for i in range(m):
        n=apply(n)
    return(len(n))

for i in range(len(l)):
    t=parse_string(l[i])
    print(main(t[0], int(t[1])))