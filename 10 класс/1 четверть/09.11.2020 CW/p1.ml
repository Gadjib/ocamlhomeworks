type tree = Tree of tree list;;

let check_for_correct s =
    let i = ref 0 in
    begin
    for k=0 to (String.length s)-1 do
        if !i<0 then failwith "Incorrect form";
        match s.[k] with
        |'(' -> i:=!i+1
        |')' -> i:=!i-1
        |_   -> failwith "Why isn't it a brace?"
    done;
    if !i <> 0 then failwith "Incorrect form #2"
    end
;; 

let parse s =
    check_for_correct s;
    let rec func n s =
        if n >= String.length s then ([],n) else
        match s.[n] with
        | '(' -> let (tl,n) = func (n+1) s in
                 if s.[n] = ')' then
                     let (tl2,n) = func (n+1) s in (Tree tl::tl2,n) 
                 else failwith "Error"
        |')' -> ([],n)
        |_   -> failwith "Here's not a brace"
    in
    func 0 s
;;

let rec string_of_tree t =
    match t with
    | [] -> ""
    | Tree a::b -> "("^(string_of_tree a)^")"^(string_of_tree b)
;;

print_string (string_of_tree (fst (parse "(())")));;
print_newline();;
