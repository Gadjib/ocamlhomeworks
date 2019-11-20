type prefix = N of prefix*prefix  | L of char;;

let rec add_to_list c l =
    match l with 
    | [] -> [(c,1)] 
    | hd::tl -> if fst hd = c then [c,((snd hd)+1)]@tl else hd::(add_to_list c tl)
;;

let create_list p = 
    let rec f p l =
        match p with
        | L c -> add_to_list c l
        | N (p1,p2) -> f p1 (f p2 l)
    in
    f p []
;;

let print_dec (x,y) =
    print_string ("("^(String.make 1 x)^","^(string_of_int y)^")")
;;

let p = N ((N ((L 'a'),(L 'b'))),N ((N ((L 'a'),(L 'b'))),(L 'a')));;
List.iter print_dec (create_list p);;
print_newline();;
