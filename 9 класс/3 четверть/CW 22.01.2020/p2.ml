open Array;;

let print_array a =
    print_string "[["; 
    for i = 0 to (length a)-1 do
        if a.(i) = 0 && not (i=(length a)-1) then print_string "][" else
        begin
            print_int a.(i);
            print_string ";"
        end
    done;
    print_string "]]"
;; 


let rec main n =
    match n with 
    | 0 -> [||]
    | 1 -> [|1|]
    | a -> let ans = ref [||] in
           begin                
               for i = 1 to n do
                   if i<>n then 
                       ans:= Array.append (Array.append !ans (Array.append [|i|] (main (n-i)))) [|0|]
                   else 
                       (ans:= Array.append !ans (Array.append [|i|] (main (n-i))));
                   print_string "Now array is:";
                   print_array !ans;
                   print_newline();
               done;
               !ans;
           end
;;

print_array (main (read_int()));;      
print_newline();;
