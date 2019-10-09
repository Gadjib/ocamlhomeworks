open Unix;;

let f = open_out_bin "file.txt";;

let to_utf_8 n = if n < 128 then 0 lsl n else
				(if n < 256 then 110 lsl n else
				(if n < 384 then 1110 lsl n else 11110 lsl n));;

let write_alphabeth() =
	for i = 176 to 191 do
		output_byte f (to_utf_8 i);
	done;
	for i = 128 to 143 do
		output_byte f (to_utf_8 i);
	done;
;;

write_alphabeth();;
close_out f;;