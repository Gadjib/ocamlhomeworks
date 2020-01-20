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

let create_matrixxx n = 
    Array.make_matrix n n ". "
;;

let replace_in_matrix t l = 
    let lt = Array.length t in
    for i = 0 to lt-1 do
        t.(i).(nth l i) <- "F "
    done
;;

let string_of_int_array_array a =
    let ans = ref "" in
    begin
        for i = 0 to (Array.length a)-1 do
            for j = 0 to (Array.length a)-1 do
                ans:=!ans^(a.(i).(j));
            done;
            ans:=!ans^"\n";
        done;
        !ans
    end
;;

let the_nearest_function_to_main_but_not_main l =
    let a = create_matrixxx (List.length l) in
    begin 
        replace_in_matrix a l;
        string_of_int_array_array a;
    end
;;

let main x = 
    match check x with 
    | None -> print_string "No.\n"
    | Some l -> print_string ("Yes. For example, this:\n"^(the_nearest_function_to_main_but_not_main l))
;;

main (read_int());;
