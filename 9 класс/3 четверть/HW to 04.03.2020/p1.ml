type lyambda = Var  of string | App of lyambda*lyambda | Abs of string*lyambda;;

let parse s = 
    let ss = s^" " in
    let rec parse_var n v =
        match ss.[n] with
        | '.' | ')' | ' ' -> (Var v,n)
        | x -> parse_var (n+1) (v^(String.make 1 x))
    and parsee n =
        match ss.[n] with 
        | '(' -> if n+1 < String.length ss && ss.[n+1] = '\\' then 
                     let (Var v,k) = parse_var (n+2) "" in
                     if ss.[k] = '.' then
                         let (v2,k2) = parsee (k+1) in
                         if ss.[k2] = ')' then
                             (Abs (v,v2),k2+1)
                         else
                             failwith "Error 1"
                     else
                         failwith "Error 2" 
                 else 
                     let (v,k) = parsee (n+1) in
                     if ss.[k] = ' ' then 
                         let (v2,k2) = parsee (k+1) in
                         if ss.[k2] = ')' then 
                             (App (v,v2), k2+1)
                         else 
                             failwith "Error 3"
                     else
                         failwith "Error 4"
        | _ -> let (v,k) = parse_var n "" in (v,k) in 
               parsee 0
;;

let rec lyambda_to_string l = 
    match l with 
    | Var s -> s
    | App (l1,l2) ->"("^(lyambda_to_string l1)^" "^(lyambda_to_string l2)^")"
    | Abs (s,ll) ->"\\"^s^".("^(lyambda_to_string ll)^")"
;;

let l = fst (parse "((\\x.(\\y.z)) ab)");;
print_string (lyambda_to_string l);;
print_newline();;
