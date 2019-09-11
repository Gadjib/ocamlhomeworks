let str m n =
  let s = ref "" in
  begin
    for i = 1 to m/2-n/2 do
      s:=!s^" ";
    done;
    for i = 1 to n do
      s:=!s^"*";
    done;
    for i = 1 to m/2-n/2 do
      s:=!s^" ";
    done;
    s:=!s^"\n";
    !s;
  end
;;

let main n =
  let s = ref "" in
  begin
    for i = 1 to n/2+1 do
      s:=!s^(str n (2*i-1));
    done;
    for i = n/2 downto 1 do
      s:=!s^(str n (2*i-1));
    done;
    !s;
  end
;;

print_string (main 6);;