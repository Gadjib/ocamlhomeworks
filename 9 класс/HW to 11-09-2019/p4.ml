open String;;

let sum_to_list s =
    let rec f s l n =
        if s = "" then l else
        begin
            if s.[0] = ' ' then f (sub s 1 ((length s)-1)) l@[n] 0 else f (sub s 1 ((length s)-1)) l (n+1);
        end;
    in f s [] 0
;;

let expectation s =
    let sum = ref 0. in
    begin
        for i = 0 to
