open String;;

let main s =
    let k = ref 0 and d = ref 0 and m = ref "" in
    begin
        for i = 0 to (length s)-1 do
            match s.[i] with
            | '.' -> let n = int_of_string !m in
                         if n >= 0 && n < 255 
                         then
                             begin 
                                 k := (n lor (!k lsl 8));
                                 d := !d+1;
                                 m := ""
                             end
                         else failwith "IP is incorrect (1)" (*Цыферка для отладки*)
            | a -> m := !m^(make 1 a);
        done;
        if !d = 3 
        then 
            let n = int_of_string !m in
                if n >= 0 && n < 255 
                then n lor (!k lsl 8)
                else failwith "IP is incorrect (2)";
        else failwith "IP is incorrect (3)";
    end
;;       

print_int (main (read_line()));; 
