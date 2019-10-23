open String;;

let if_glas c =
        match c with
        | 'a' -> 1
        | 'e' -> 1
        | 'i' -> 1
        | 'o' -> 1
        | 'u' -> 1
        | 'y' -> 1
        | _ -> 0

let colglas s =
    let sum = ref 0 in
    begin
        for i = 0 to (length s) - 2 do
            sum:=!sum+((if_glas s.[i]) land (if_glas s.[i+1]))
        done;
        float !sum;
    end
;; 

let expictation s =
   let sum = ref 0. in
   begin
       for i = 0 to (length s) - 1 do
           sum:=!sum+.((3./.13.)*.(colglas s));
       done;
       !sum;
   end
;;

print_float (expictation (read_line()));;
print_newline();;
