(* По списку и с/с напечатать int *)

let main n l =
    let rec f d n x l =
        match l with
        | [] -> x
        | hd::tl -> f (d-1) n (x+(hd*(int_of_float ((float n)**(float d))))) tl
    in
    f ((List.length l)-1) n 0 l
;;

let l = [1;0;1];;
print_int (main 2 l);;
print_newline();;
