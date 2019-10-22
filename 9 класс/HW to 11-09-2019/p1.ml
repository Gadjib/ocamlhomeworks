open String;;

let put c l =
let rec f c l n =
        match l with
        | [] -> 0 
        | hd::tl -> if snd hd = c then n else f c tl (n+1)
in f c l 1;;

let rec raise c l =
        match l with
        | [] -> l
        | hd::tl -> if snd hd = c then ((((fst hd)+1),c)::tl) else raise c tl;;

let rec count s l =
        if s = "" then l else
        begin
                if put s.[0] l = 0 then count (sub s 1 ((length s)-1)) [(1,s.[0])]@l else count (sub s 1 ((length s)-1)) (raise s.[0] l)
        end;;


let print_deci (x,y) =
        print_string "(";
        print_int x;
        print_char ',';
        print_char y;
        print_string ")";;
List.iter print_deci (count "abcdeffggg" []);;
