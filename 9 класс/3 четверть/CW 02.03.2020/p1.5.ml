type lambda = Var of string | Ayy of lambda*lambda | Abs of string*lambda;;

let rec print_lambda lam = 
    match lam with 
    | Var s -> print_string s
    | Ayy (l1,l2) -> print_string "("; print_lambda l1; print_string " "; print_lambda l2; print_string ")"
    | Abs (s,l) -> print_string ("(₴" ^ s ^ "."); print_lambda l; print_string ")"
;;

let l = Ayy ((Abs ("xyu", Var "xyu")), Var "xyu");;
print_lambda l;;
print_newline();;
