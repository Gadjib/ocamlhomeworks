open List;;

type t2 = B of t2 list;;

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
    |B [] -> print_string (str (3*n) '*')
    |B (hd::tl) -> print_string (str (3*n) '*'); f hd (n+1); 
                   for i = 0 to (length tl)-1 do f (nth tl i) (n+1); done
  in
  f t 0
;;  

let t = B [ B [B[];B[]];B[];B[]];;
main t;;
print_newline();;