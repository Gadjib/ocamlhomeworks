n=int(input())
i=0
t=0
while n!=0:
    if n>=100:
        t=divmod(n,100)[0]
        n=n-100*t
        i=i+t
    elif n>=20:
        t=divmod(n,20)[0]
        n=n-20*t
        i=i+t
    elif n>=10:
        t=divmod(n,10)[0]
        n=n-10*t
        i=i+t
    elif n>=5:
        t=divmod(n,5)[0]
        n=n-5*t
        i=i+t
    else :
        i=i+n
        n=0
print(i)