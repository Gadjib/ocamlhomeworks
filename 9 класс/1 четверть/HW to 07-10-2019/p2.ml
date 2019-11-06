open String;;

let main n = 
    if not (n >= 0 && n < (int_of_float (2.**32.))) then failwith "Number is incorrect";
    let ans = ref "" and a = ref n in
    begin
        for i = 0 to 3 do
            let t = (string_of_int (!a land 0b11111111)) in
            if i = 3 then ans := t^(!ans)
            else ans := "."^t^(!ans);
                 a := !a lsr 8;
        done;
        !ans
        
    end  
;;

print_string (main (read_int()));;
print_newline();;
