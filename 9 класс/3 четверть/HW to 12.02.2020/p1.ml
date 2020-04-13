let rec main n l =
    match ((n<0),(n=0)) with
    | (true,false) -> 0
    | (false,true) -> 1
    | _ ->
    match l with
    | [] -> 0
    | hd::tl -> (main (n-hd) l) + (main n tl)
;;

let m = 228 and c = [2;5] in
print_int (main m c);;
