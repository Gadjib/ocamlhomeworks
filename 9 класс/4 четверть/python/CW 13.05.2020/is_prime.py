def is_prime(x):
    ans = True
    for i in range(2,x):
        if x % i == 0:
            ans = False
    return (ans)
n=0
i=0
while n<15:
    if is_prime(i):
        print(i)
        n=n+1
    i=i+1
