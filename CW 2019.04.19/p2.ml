type tree = L | N of int*tree*tree;;

let add_tree t t1 =
  let tt = ref t 
  and rec f tt t1 =
    match !tt with
    |L -> t1
    |N (n,L,L) -> N(n,L,t1)
    |N (n,t11,t12) -> tt:=add_tree !tt t12
  in 
  f tt t1;
  !tt;
;;

let main n =
  let rec bambook t n =
    if n = 0 then t else bambook (add_tree t (N(n,L,L))) (n-1)
  in
  bambook L n
;;

let rec print_tree t =
  match t with
  |L -> print_string "L"
  |N (n,t1,t2) -> print_string ("N ("^(string_of_int n)^","); print_tree t1; print_tree t2; print_string ")";
;;

print_tree (main 5);;