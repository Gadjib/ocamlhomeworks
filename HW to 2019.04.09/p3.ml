let str n c =
  let s = ref "" in
  begin
    for i = 1 to n do
      s:=!s^" ";
    done;
    s:=!s^(String.make 1 c);
    !s;
  end
;;

let main n = 
  let s = ref "" in
  begin 
    for i = 0 to n-1 do
      s:=!s^(str (3*i) '(')^"\n";
    done;
    s:=!s^(str (3*n) '*')^"\n";
    for i = n-1 downto 0 do
      s:=!s^(str (3*i) ')')^"\n";
    done;
    !s;
  end
;;

print_string (main 3);;