type 'a tree = Leaf | Node of ('a tree) * ('a tree) * 'a;;

let rec mem t n =
    match t with
    | Leaf -> false
    | Node (t1,t2,x) -> if x=n then true else (mem t1 n) || (mem t2 n)
;;

let t = Node ((Node (Leaf,Leaf,1)),(Node (Leaf,Leaf,3)),2);;
Printf.printf "%b\n" (mem t 1);;
Printf.printf "%b\n" (mem t 0);;
