open Unix;;

let f = open_out_bin "file.txt";;

(*let to_utf_8 n f = if (int_of_float ((2.**32.)-1)) lxor (int_of_float ((2.**7.)-1)) = 0 then output_byte f (n land 0xFF) else
				(if (int_of_float ((2.**32.)-1)) lxor (int_of_float ((2.**15.)-1)) = 0 then output_byte f ((n land (0xFF lsl 8)) lsr 8);
				                                                                            output_byte f (n land 0xFF) else
				(if (int_of_float ((2.**32.)-1)) lxor (int_of_float ((2.**23.)-1)) = 0 then output_byte f ((n land (0xFF lsl 16)) lsr 16);
					                                                                        output_byte f ((n land (0xFF lsl 8)) lsr 8);
				                                                                            output_byte f (n land 0xFF)
				else (output_byte f ((n land (0xFF lsl 24)) lsr 24);
				     output_byte f ((n land (0xFF lsl 16)) lsr 16);
					 output_byte f ((n land (0xFF lsl 8)) lsr 8);
				     output_byte f (n land 0xFF))));;

to_utf_8 48 f;;
*)

let utf8 n =	
        if n < 128 then [n] else  
	let rec f x y = 
                if ((1 lsl (8-x)) > y) then [(((1 lsl x) - 1) lsl (8 - x)) lor y] 
                else (0b10000000 lor (y mod 64))::(f (x+1) (y lsr 6)) 
        in
        List.rev (f 1 n)
;;

let rec write_alphabet n i = 
        if i = 0 then close_out f 
        else (List.iter (fun x -> output_byte f x) (utf8 n); write_alphabet (n+1) (i-1))
;;

write_alphabet 1040 64;;
close_out f;;
