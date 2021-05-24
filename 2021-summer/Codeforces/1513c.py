l=[]
n = int(input())
for i in range(n):
    l.append(input())

def parse_string(s):
    p = s.rsplit(' ')
    return([p[0], p[1]])

def parse_to_list(n):
    ll=list(str(n))
    l=list(map(int, ll))
    return(l)

def parse_elements(l):
    lans=[]
    for i in range(len(l)):
        lans=lans+(parse_to_list(l[i]))
    return(lans)

def apply_funcs(n, m):
    l=parse_to_list(n)
    for i in range(m):
        l=list(map(lambda x: x+1, l))
        l=parse_elements(l)
    l1=list(map(str,l))
    s="".join(l1)
    return(len(s))

for i in range(len(l)):
    t=parse_string(l[i])
    print(apply_funcs(int(t[0]), int(t[1])))