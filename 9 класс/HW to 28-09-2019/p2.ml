open String;;

let f = open_in "file.txt";;

let rec v_read_file n = 
	try 
		let x = input_line f in if length n < length x then v_read_file x else v_read_file n
	with 
		End_of_file -> n
;;

let s = v_read_file "";;
print_string s;;

close_in f;;
print_newline();;