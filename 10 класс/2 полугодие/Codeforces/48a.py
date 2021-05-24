def bool_fun(s1,s2):
    if s1=='rock':
        if s2=='paper':
            return(2)
        else:
            return(1)
    elif s1=='paper':
        if s2=='rock':
            return(1)
        else:
            return(2)
    else:
        if s2=='paper':
            return(1)
        else:
            return(2)

def main(s1,s2,s3):
    if (s1!=s2 and s2!=s3 and s3!=s1) or s1==s2==s3:
        return('?')
    elif s1==s2:
        if bool_fun(s1, s3)==2:
            return('S')
        else:
            return('?')
    elif s1==s3:
        if bool_fun(s1,s2)==2:
            return('M')
        else:
            return('?')
    elif s2==s3:
        if bool_fun(s2, s1)==2:
            return('F')
        else:
            return('?')

s1=input()
s2=input()
s3=input()
print(main(s1, s2, s3))