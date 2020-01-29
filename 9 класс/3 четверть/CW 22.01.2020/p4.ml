let print_int_list l =
    print_string "[";
    for i = 0 to (List.length l)-2 do
        print_int (List.nth l i);
        print_string "; ";
    done;
    print_int (List.nth l ((List.length l)-1));
    print_string "]\n"
;;

let rec step n m h =
    if n > 0 then 
        for i = 1 to m do
            step (n-i) i (i::h)
        done
    else 
    begin
    if n = 0 then
        print_int_list h;
    end
;;

let x = read_int();;

step x x [];;

print_newline();;
