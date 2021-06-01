let generate_str n m=
    let l = ref [] in
    begin
    for i = 0 to m do
        l:=!l@[String.length(string_of_int(n+i))]
    done;
    !l;
    end
;;

let generate_matr m =
    let l = ref [] in
    begin
    for i = 0 to 9 do
        l:=!l@[(generate_str i m)]
    done;
    !l
    end
;;

let matr = generate_matr(2*(int_of_float(10.**5.)));;