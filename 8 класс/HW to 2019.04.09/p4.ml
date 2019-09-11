type tree = Braces of tree | Star;;

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

let main m n = 
  let s = ref "" in
  begin 
    for i = 0 to m-1 do
      s:=!s^(str (n*i) '(')^"\n";
    done;
    s:=!s^(str (n*m) '*')^"\n";
    for i = m-1 downto 0 do
      s:=!s^(str (n*i) ')')^"\n";
    done;
    !s;
  end
;;

print_string (main 3 8);;