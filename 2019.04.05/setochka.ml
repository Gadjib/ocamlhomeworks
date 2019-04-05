let nstr n = 
  let s = ref "" in
  begin
    s:=!s^"*";
    for i = 1 to n do
      s:=!s^" ";
    done;
    s:=!s^"*\n";
    !s;
  end
;;

let print_elt() =
  let s = ref "" in
  begin
    for i = 1 to 7 do
      s:=!s^"*";
    done;
    s:=!s^"\n";
    for i = 1 to 5 do
      s:=!s^(nstr 5);
    done;
    for i = 1 to 7 do
      s:=!s^"*";
    done;
    s:=!s^"\n";
    !s;
  end;
;;

print_string (print_elt());;
    