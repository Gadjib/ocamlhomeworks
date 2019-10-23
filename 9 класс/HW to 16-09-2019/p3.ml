let unst n =
    let i = ref 1 in
    begin
        while (10.**(float !i)) < (float n) do
                i:=!i+1;
        done;
        !i-1;
    end
;;

let number n i = 
    let m = (n mod (int_of_float (10.**(float i)))) in
    (m - (m mod (int_of_float (10.**(float (unst m))))))/(int_of_float (10.**(float (unst m))))
;;

let biggest_num n =
    let ans = ref 0 in
    begin    
        for i = 1 to (unst n) do
            if (number n i) > !ans then ans:=(number n i)
        done;
        !ans
    end
;;

let expictation n =
    let sum = ref 0. in
    begin
        for i = 1 to n do
            sum:=!sum+.(1./.(float n))*.(float (biggest_num i));
        done;
        !sum
    end
;;

print_float (expictation (read_int()));
