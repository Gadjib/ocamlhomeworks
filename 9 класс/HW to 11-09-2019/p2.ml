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
;;

let colglas s =
    let sum = ref 0 in
    begin
        for i = 0 to (length s) - 1 do
            sum:=!sum+(if_glas s.[i])
        done;
        float !sum;
    end
;; 

let expectation s =
    ((3./.13.)*.(colglas s));;
       
print_float (expectation (read_line()));;
print_newline();;
