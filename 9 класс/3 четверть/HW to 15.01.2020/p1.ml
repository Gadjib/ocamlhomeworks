open List;;
exception Found of int list;;

let check n =
    let rec check_1 d m u l =
        match l with
        | [] -> true
        | hd::tl -> if hd = d-1 || hd = m || hd = u+1 then false else check_1 (d-1) m (u+1) tl
    in
    let rec func c p =
        if c >= n then raise (Found p) 
        else
        for i = 0 to (n-1) do 
            if check_1 i i i p then func (c+1) ([i]@p)
        done
    in
    try 
        func 0 []; None 
    with
        Found l -> Some l
;;

let string_of_int_list l = 
    let rec f l s =
        match l with 
        | [] -> s
        | hd::tl -> f tl (s^(string_of_int hd)^";")
    in
    "["^(f l "")^"]"
;;

let main x = 
    match check x with 
    | None -> print_string "No."
    | Some l -> print_string ("Yes. For example, this:\n"^(string_of_int_list l))
;;

main (read_int());;
print_newline();;
