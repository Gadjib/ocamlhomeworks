(* По м.с. найти вершины без входных рёбер *)

open Array;;

let m = [| [| 0; 1; 1; 0; 0; 0 |];
           [| 0; 0; 0; 1; 0; 1 |];
           [| 0; 0; 0; 0; 0; 1 |];
           [| 0; 0; 0; 0; 1; 0 |];
           [| 0; 0; 0; 0; 0; 0 |];
           [| 0; 0; 0; 0; 1; 0 |];
        |]
;;

let make_list n =
    let rec f n l =
        if n = 0 then [0]@l else [n]@(f (n-1) l);
    in
    f n []
;;

let rec rm_el n l = 
    match l with
    | [] -> []
    | hd::tl -> if hd = n then tl else hd::(rm_el n tl)
;; 

let find_sad_edge m = 
    let l = ref (make_list ((length m)-1)) in
    begin
        for i = 0 to (length m)-1 do
            for j = 0 to (length m)-1 do
                if (m.(i)).(j) = 1 then l:=(rm_el j !l)
            done
        done;
        !l;
    end
;;

List.iter (Printf.printf "%d;") (find_sad_edge m);;
print_newline();;
