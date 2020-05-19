# Не очень понял, как вернуть тройку, поэтому напечатаю их

with open("p4.txt") as f:
    content = f.readlines()
L = []
for x in content:
    tokens = x.strip().split(' ')
    if len(tokens) == 1:
        print('-', tokens[0], '-')
    elif len(tokens) == 2:
        print(tokens[0], tokens[1], '-')
    elif len(tokens) == 3:
        print(tokens[0], tokens[1], tokens[2])
    else:
        raise ("Input data is incorrect")
