(*Я тут для любого O сделал, так что это и вторая задача тоже *)

let last_num n =
    (string_of_int n).[(String.length (string_of_int n))-1]
;;

let char_of_int2 n =
    match n with
    | 0 -> '0' 
    | 1 -> '1'
    | 2 -> '2'
    | 3 -> '3'
    | 4 -> '4'
    | 5 -> '5'
    | 6 -> '6'
    | 7 -> '7'
    | 8 -> '8'
    | 9 -> '9'
    | _ -> failwith "Unmatched integer"
;;

let main o n =
    let a = ref 0 and b = ref 0 in
    for i=1 to n do
        if i*i <= n then
            (if (last_num (i*i)) = char_of_int2 o then
                a:=!a+1);
            b:=!b+1
    done;
    (float_of_int !a)/.(float_of_int !b)
;;

print_float (main 0 1000);;
print_newline();;
