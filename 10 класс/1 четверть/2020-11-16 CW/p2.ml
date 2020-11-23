type 'a tree = Leaf | Node of ('a tree) * ('a tree) * 'a;;

let rec add t n = 
    match t with
    | Leaf -> Node (Leaf, Leaf, n)
    | Node t1 t2 m -> if n=m then t else if n<m then Node (add t1 n,t2,m) else Node (t1,add t2 n,m)
;; 
