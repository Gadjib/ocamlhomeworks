type 'a prefix = P of ('a prefix) * ('a prefix) | L of 'a;;

let sort_list l = List.sort (fun (_,a) (_,b) -> compare a b) l;;

let rec huff l =
    let f l = 
        match l with 
        | [] -> failwith "Error: list is empty"
        | hd::[] -> l
        | (p1,h1)::(p2,h2)::tl -> huff ((P (p1,p2),h1+h2)::tl)
    in
    f (sort_list l)
;;

let rec prefix_to_string p =
    match p with
    | L (c) -> String.make 1 c
    | P (p1,p2) -> "!-("^(prefix_to_string p1)^","^(prefix_to_string p2)^")"
;;

List.iter (fun (h1,h2) -> print_string ("("^(prefix_to_string h1)^","^(string_of_int h2)^")")) (huff [(L 'a',12);(L 'b',4);(L 'c',30)]);;
print_newline();;
