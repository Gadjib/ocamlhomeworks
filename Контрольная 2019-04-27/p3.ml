open List;;

type t2 = B of t2 list;;

let rec main t =
  match t with
  |B [] -> print_string "B[]"
  |B (hd::tl) -> print_string "B["; main hd; print_string ";";
                 for i = 0 to (length tl)-1 do main (nth tl i) done; print_string "]"
;;

let t = B [ B [B[];B[]];B[];B[]];;
main t;;
print_newline();;