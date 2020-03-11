(* Разменять сумму *)

let a = [1;2;5;10];;

let rec return_max n l =
    match l with
    | [] -> failwith "I'm sorry, but your number is less than every numbers in your list"
    | hd::[] -> if n > hd then hd else return_max n []
    | hd1::hd2::tl -> if n > hd1 then hd1 else (if hd1 > n && hd2 < n then hd2 else return_max n (hd2::tl))
;;

for i = 11 downto 2 do
    print_int (return_max i (List.rev a));
    print_newline();
done;;

(*let main n b = 
    let ar = List.rev (List.sort b) in
    let rec f n a = *)
        
        
