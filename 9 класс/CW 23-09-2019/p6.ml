open Unix;;

let f = open_out_bin "file.txt";;

let to_utf_8 n f = if (int_of_float ((2.**32.)-1)) lxor (int_of_float ((2.**7.)-1)) = 0 then output_byte f (n land 0xFF) else
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

write_alphabeth();;
close_out f;;