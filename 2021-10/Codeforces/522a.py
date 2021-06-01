l=[]
for i in range(int(input())):
    l.append(input())

def parse_string(s):
    t=s.rsplit(' ')
    return((t[0].lower(),t[2].lower()))

list_of_names=[]
for s in l:
    t=parse_string(s)
    if not (t[1] in list_of_names):
        list_of_names.append(t[1])
list_of_names.append(parse_string(l[len(l)-1])[0])

graph=[[]] * len(list_of_names)
dict={}

for i in range(len(list_of_names)):
    dict[list_of_names[i]]=i
    print(list_of_names[i])

def create_graph(l):
    for s in l:
        t=parse_string(s)
        graph[dict[t[1]]].append(t[0])

print(list_of_names)
print(dict)
create_graph(l)
print(graph)
