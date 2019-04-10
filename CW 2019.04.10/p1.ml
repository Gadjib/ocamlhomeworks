type tree = N of int*tree*tree | L;;

let rec lkp t =
  match t with
  |L -> []
  |N (n,t1,t2) -> (lkp t1)@[n]@(lkp t2)
;;

let rec klp t =
  match t with
  |L -> []
  |N (n,t1,t2) -> [n]@(klp t1)@(klp t2)
;;

let rec lpk t =
  match t with
  |L -> []
  |N (n,t1,t2) -> (lpk t1)@[n]@(lpk t2)
;;

let t = N (1,(N(3,L,L)),(N(5,(N(7,L,L)),(N(6,L,L)))));;
List.iter (Printf.printf "%d;") (klp t);;
print_newline();;