(* Посчитать количество двоичных деревьев *)

let if_rec_mod n = 
    let rec f x =
        if x>=n then true else
        if n mod x = 0 then false else f (x+1) in
    f 2
;;

let generate n = 
    let rec f x =
        if x > n then [] else 
        if if_rec_mod x then x::(f (x+1)) else f (x+1) in
    f 1
;;

let main n =
    let a = Array.init (n+1) (fun i -> (Array.make (List.length (generate n)) 0)) in
    a.(0).((List.length (generate n)) - 1) <-1;
    let rec f k i l =
        match l with
        | [] -> ()
        | p::tl -> if k+p <= n then
                       begin 
                           for j = i to ((List.length (generate n)) - 1) do
                                a.(k+p).(i) <- a.(k).(j) + a.(k+p).(i)
                           done;
                           f k (i+1) tl 
                       end
    in

    let rec g k =
        if k = n then Array.fold_left (+) 0 a.(n) else (f k 0 (generate n); g (k+1))
    in
    g 0
;;

print_int (main (read_int()));;
print_newline();;
