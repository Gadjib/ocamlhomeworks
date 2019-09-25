let f = open_in "file.txt";;

let rec v_read_file() =
	try 
		let x = input_line f in 1 + (v_read_file())
	with
		End_of_file -> 0
;;

let p = v_read_file();;

print_int p;;

close_in f;;
print_newline();;