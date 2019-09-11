type comma = Braces of comma*comma | Star;;

let str n c =
  let s = ref "" in
  begin
    for i = 1 to n do
      s:=!s^" ";
    done;
    s:=!s^(String.make 1 c)^"\n";
    !s;
  end
;;

let main t = 
  let rec f t n =
    match t with
    |Star -> str (4*n) '*'
    |Braces (t1,t2) -> (str (4*n) '(')^(f t1 (n+1))^(f t2 (n+1))^(str (4*n) ')' )
  in
  f t 0
;;

print_string (main (Braces ((Braces (Star,Star)),Star)));;