let string_n n =
  let s = ref "" in
  begin
    for i = 1 to n do
      s:=!s^"*";
    done;
    !s;
  end 
;;

let main n =
  let s = ref "" in
  begin
    for i = 1 to n do
      s:=!s^(string_n n)^"\n";
    done;
    !s;
  end;
;;

print_string (main (read_int()));;                                                        