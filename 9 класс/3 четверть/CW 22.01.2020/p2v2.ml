let rec count n p l k =
    if n = k then 
    begin
        List.iter (fun x -> print_int x; print_string " ") (n::l);
        print_string "\n"
    end
    else
    begin
        if p = 0 then 
            ()
        else
        begin
            count p (p-1) ((n-p)::l) k;
            count n (p-1) l k 
        end
    end
;;

let main n =
    let rec f n p l k =
        if k = n then
            print_int k
        else
        begin
            count n p l k; 
            f n p l (k+1);
        end
    in
    f n (n-1) [] 0
;;

main (read_int());;
print_newline();;
