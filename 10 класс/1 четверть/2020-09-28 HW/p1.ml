let main m n = 
    let x = ref 0 and t = ref true in
    for i=m to n do
        t:=true;
        if i=1 
        then t := false;
        for j=2 to i-1 do
            if i mod j = 0 
            then t := false
        done;
        if !t then x := !x + 1
    done; 
    (float_of_int !x)/.(float_of_int (n-m+1)) 
;;

let m = 3 and n = 14;;
print_float (main m n);;
