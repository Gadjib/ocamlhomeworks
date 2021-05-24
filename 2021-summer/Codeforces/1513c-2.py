import time
"""l=[]
n = int(input())
for i in range(n):
    l.append(input())
"""
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

t=time.time()
mtr=generate_matrix(2*(10**5))
print((time.time()) - t)