let unst n =
    let i = ref 1 in
    begin
        while (10.**(float !i)) < (float n) do
                i:=!i+1;
        done;
        !i-1;
    end
;;

let first_number n = 
    (n - (n mod (int_of_float (10.**(float (unst n))))))/(int_of_float (10.**(float (unst n))))
;;

let expictation n =
    let sum = ref 0. in
    begin
        for i = 1 to n do
            sum:=!sum+.(1./.(float n))*.(float (first_number i));
        done;
        !sum
    end
;;

print_float (expictation (read_int()));;
