"""import time
l=[]
n = int(input())
for i in range(n):
    l.append(input())"""

def parse_string(s):
    p = s.rsplit(' ')
    return ([p[0], p[1]])

def generate_str(n,m):
    l=[]
    for i in range(0,m):
        l.append(len(str(n+i)))
    return(l)

def generate_matrix(m):
    l=[]
    for i in range(10):
        l.append(generate_str(i,m))
    return(l)

mtr=generate_matrix(2*(10**5))

def main(s, m):
    n=0
    for c in s:
        n=n+(mtr[(int(c))][m])
    return(n)

print(main("12",100))