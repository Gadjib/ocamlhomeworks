type tree = Braces of tree | Star;;

let n_spaces n = 
  let s = ref "" in
  begin
    for i = 1 to n do
      s:=!s^" "
    done;
    !s;
  end
;;

let rec main t n = 
  match t with 
  |Star -> "*"
  |Braces t1 -> "(\n"^(n_spaces (3*n))^(main t1 (n+1))^(n_spaces (3*n))^")\n"
;;

print_string (main (Braces (Braces Star)) 0);;