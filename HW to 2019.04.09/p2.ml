type tree = Braces of tree | Star;;

let rec print_braces t =
  match t with
  |Star -> print_string "*"
  |Braces t1 -> print_string "(" ;print_braces t1;print_string ")";
;;

print_braces (Braces (Braces (Braces Star)));;
print_newline();;