open String;;

let string_n n =
  let s = ref "" in
  begin
    for i = 1 to n do
      s:=!s^" ";
    done;
    s:=!s^"*";
    !s;
  end 
;;

let main n = 
  let s = ref "" in
  begin 
    for i = 1 to n do
      s:=!s^(string_n i)^"\n"
    done;
    for i = n-1 downto 1 do
      s:=!s^(string_n i)^"\n";
    done;
    !s;
  end
;;

print_string (main (read_int()));;