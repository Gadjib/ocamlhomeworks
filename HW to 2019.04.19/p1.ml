type tree = N of int*tree*tree | L;;

let rec lkp t =
  match t with
  |L -> []
  |N (n,t1,t2) -> (lkp t1)@[n]@(lkp t2)
;;

let main t =
  let l = lkp t in if (List.sort compare l) = l then true else false
;;

let t = N (3,(N(1,L,L)),(N(7,(N(5,L,L)),(N(8,L,L)))));;
Printf.printf "%b" (main t);;
List.iter (Printf.printf "%d;") (lkp t);;
print_newline();;