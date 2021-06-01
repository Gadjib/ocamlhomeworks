let f = open_in "x.txt";;

let deg n m=
    int_of_float ((float n)**(float m))
;;

let split l =
    let rec func l n = 
        match l with
        | hd::tl -> func tl (n+(hd*(deg 10 (List.length tl))))
        | [] -> n
    in
    func l 0
;;

let int_of_char_n c =
    int_of_string (String.make 1 c)
;;
let char_to_int_list l =
    List.map int_of_char_n l
;;

let string_to_int_list s =
    let status = ref false and l = ref [] and lm = ref [] in
    begin
        for i = 0 to (String.length s)-1 do
            match s.[i] with
            |'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9' -> (status:=true; l:=!l@[(s.[i])])
            | _ -> if !status then (lm:=!lm@[(split (char_to_int_list !l))]; l:=[]; status:= false)
        done;
        !lm
    end
;;

let rec read_in f =
    let rec read_inn l =
        try
                let x = input_line f in (print_string x; print_int (List.length l); read_inn (l@[x]))
        with
            End_of_file -> l
    in
    let w = read_inn [] in print_int (List.length w); w
;;

let split_to_string l =
    let rec func l s =
        match l with
        | hd::tl -> func tl (s^hd)
        | [] -> s
     in
     func l ""
;;

let l = string_to_int_list (split_to_string (read_in f));;

List.iter (Printf.printf "%s;") (read_in f);;
