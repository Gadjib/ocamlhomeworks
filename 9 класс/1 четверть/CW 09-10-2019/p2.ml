let in_file_name = Sys.argv.(1);;
let out_file_name = Sys.argv.(2);;

let f_in = open_in_bin in_file_name;;
let f_out = open_out_bin out_file_name;;

let rec read_in f = 
	try
		let x = input_line f in (x^"\n"^(read_in f))
	with
		End_of_file -> "";;

let write_out f1 f2 = output_string f2 (read_in f1);;

write_out f_in f_out;;