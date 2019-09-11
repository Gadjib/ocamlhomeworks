open Graphics;;
open Array;;
open_graph " 700x500";;

let draw_v n i j = 
  draw_rect i j 16 16;
  moveto (i+6) (j+3);
  draw_string (string_of_int n);
;;

let draw_r n1 n2 i j o =
  draw_v n1 i j;
  draw_v n2 (i+o) j;
;;

let init_p p =
  sort compare p
;;

let draw_p p = 
  let a = init_p p in
  begin
