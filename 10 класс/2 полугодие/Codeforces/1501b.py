l=[]
for i in range(int(input())):
    l.append([int(input()), input()])

def iter(l):
    lst = list(map(int, l[1].rsplit(' ')))
    n=l[0]
    ans=['0']*n
    t=0
    for i in range(n):
        t=lst[i]
        if t>i:
            for i in range(min(i+1, t)):
                ans[i]='1'
        else:
            for i in range(i-t+1, i+1):
                ans[i]='1'
    return(ans)

def main(l):
    for t in l:
        s=" ".join(iter(t))
        print(s)

main(l)