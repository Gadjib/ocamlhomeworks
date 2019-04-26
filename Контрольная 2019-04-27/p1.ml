type t = Br of t*t | L;;

let rec string_of_t t = 
  match t with
  |L -> "L"
  |Br (t1,t2) -> "Br ("^(string_of_t t1)^","^(string_of_t t2)^")"
;;

let t = Br(Br(L,L),L);;
print_string (string_of_t t);;