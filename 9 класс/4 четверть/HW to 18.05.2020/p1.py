def catalan(n):
    if n >= 2:
        ans = ((2*((n*2)-1))/(n+1))*catalan(n-1)
        return int(ans)
    else:
        return 1

for i in range(15):
    print(catalan(i))