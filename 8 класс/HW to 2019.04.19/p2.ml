type tree = N of int*tree*tree | L;;

let rec main t n =
  match t with
  |L -> false
  |N (x,t1,t2) -> if x = n then true else (main t1 n) || (main t2 n)
;;

let t = N (3,(N(1,L,L)),(N(7,(N(5,L,L)),(N(8,L,L)))));;
Printf.printf "%b\n" (main t 5);;
Printf.printf "%b\n" (main t 4);;