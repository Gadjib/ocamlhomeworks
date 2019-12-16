(* Про каждую вершину сказать количество входных и исходных рёбер *)

open Array;;

let m = [| [| 0; 1; 1; 0; 0; 0 |];
           [| 0; 0; 0; 1; 0; 1 |];
           [| 0; 0; 0; 0; 0; 1 |];
           [| 0; 0; 0; 0; 1; 0 |];
           [| 0; 0; 0; 0; 0; 0 |];
           [| 0; 0; 0; 0; 1; 0 |];
        |]
;;

let fst3 (a,b,c) = a and snd3 (a,b,c) = b and thd3 (a,b,c) = c;;

let create_list n = 
    let rec f n l =
            if n = 0 then l@[(0,0,0)] else (f (n-1) l)@[(n,0,0)];
    in
    f n []
;;

let rec increase_in_list n d l =
    match l with
    | [] -> failwith "Error: this number doesn't exist"
    | hd::tl -> if fst3 hd = n then match d with
                                    | 1 -> (n,((snd3 hd)+1),(thd3 hd))::tl
                                    | 2 -> (n,(thd3 hd),((snd3 hd)+1))::tl
                                    | _ -> failwith "Error"
                               else hd::(increase_in_list n d tl)
;;

let print_dec3 (a,b,c) = 
    print_string ("("^(string_of_int a)^","^(string_of_int b)^","^(string_of_int c)^")\n")
;;

let count_all m = 
    let l = ref (create_list ((length m)-1)) in
    begin
        for i = 0 to (length m)-1 do
            for j = 0 to (length m)-1 do
                if (m.(i)).(j) = 1 then (l := increase_in_list i 1 !l; l := increase_in_list j 2 !l)
            done;
        done;
        !l
    end
;;

let rec print_counted_list l =
    match l with
    | [] -> ()
    | hd::tl -> print_string ("Ребро "^(string_of_int (fst3 hd))^":   Входящих - "^(string_of_int(snd3 hd))^", исходящих - "^(string_of_int (thd3 hd))^"\n"); print_counted_list tl;
;;

print_counted_list (count_all m);;
