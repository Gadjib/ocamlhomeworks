open String;;

let rec to_dec n =
    match (n<0,n<=1) with
    | (true,false) -> failwith "Input data is incorrect: n < 0"
    | (false,true) -> string_of_int n
    | (false,false) -> (to_dec (n/2)) ^ (string_of_int (n mod 2))
    | _ -> ""
;;

let string_to_list s = 
    let rec f s l =
        if s = "" then l else f (sub s 1 ((length s)-1)) (l@[int_of_string (sub s 0 1)])
    in
    f s []
;; 

let create_zero_list n =
    if n = 0 then [] else
    begin 
        let l = ref [] in
        begin
            for i = 1 to n do
                l:=!l@[0]
            done
        end;
        !l
    end
;;

let rec serialize l d v = 
    (*match (v<d,v>d) with
    | (true,false) -> failwith "Input data is incorrect: v<d"
    (*| (false,false) -> (create_zero_list (v-d))@l@(string_to_list (to_dec v))*)
    | _ ->*) (create_zero_list (v-d))@l@(string_to_list (to_dec v))
;;

List.iter (Printf.printf "%d;") (serialize [1;0;1;1;1] 3 0);;            
print_newline();;   
