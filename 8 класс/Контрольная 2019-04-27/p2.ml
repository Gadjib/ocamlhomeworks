type t = Br of t*t | L;;

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
    |L -> str (4*n) '.'
    |Br (t1,t2) -> (str (3*n) '*')^(f t1 (n+1))^(f t2 (n+1))
  in
  f t 0
;;

print_string (main (Br ((Br (L,L)),L)));;