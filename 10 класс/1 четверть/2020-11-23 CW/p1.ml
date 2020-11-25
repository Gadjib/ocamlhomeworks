type tree = Leaf | Node of tree*tree;;

let rec is_bamboo t = 
    match t with
    | (Leaf,Leaf) -> true
    | (t1,Leaf)   -> is_bamboo t1
    | (Leaf,t2)   -> is_bamboo t2
    | _           -> false
;;
