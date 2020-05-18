def str(n,x):
    s='-'*x
    i=int((x/2)-(n/2))
    j=int((x/2)+(n/2))
    s = s[:i] + '*' + s[i+1:] 
    s = s[:j] + '*' + s[j+1:]
    return(s)

def main(n):
    for i in range(1,int(n/2),2):
        print(str(i,n))
    for i in range(int((n/2)-1),1,-2):
        print(str(i,n))

main(25)
