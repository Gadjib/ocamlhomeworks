from prettytable import PrettyTable

n=10
m=12
t = PrettyTable()

t.field_names=list(range(n+1))

def CreateList(n,m):
    s=[n]
    for i in range(2,m):
        s=s+[i*n]
    return(s)

for i in range(m+1):
    t.add_row(CreateList(i,m))

print(t)
