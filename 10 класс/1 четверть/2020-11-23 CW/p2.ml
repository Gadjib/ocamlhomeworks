type 'a tree = Leaf | Node of ('a tree)*('a tree)*'a;;

let rec is_balanced t =
    match t with
    | (Leaf, Leaf) -> true
    | (Leaf, Node (t1,t2,n)) -> if t1=Leaf && t2=Leaf then true else false
    | (Node (t1,t2,n), Leaf) -> if t1=Leaf && t2=Leaf then true else false
    | (t1,t2) -> is_balanced t1 && is_balances t2
;; 
