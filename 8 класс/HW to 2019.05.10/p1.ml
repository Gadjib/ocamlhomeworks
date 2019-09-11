open Graphics;;
open_graph " 700x500";;

type tree = B of int*tree*tree | L;;

let draw_v n i j = 
  draw_rect i j 16 16;
  moveto (i+6) (j+3);
  draw_string (string_of_int n);
;;

let linefromto i1 j1 i2 j2 =
  moveto i1 j1;
  lineto i2 j2;
;;

let rec draw_tree t i j x = 
  match t with
  |L -> ()
  |B (n,t1,t2) -> (
                  match x with 
                  |0 -> ()
                  |1 -> linefromto (i+8) (j+16) (i+33) (j+41)
                  |2 -> linefromto (i+8) (j+16) (i-17) (j+41)
                  |_ -> failwith "Некорректно вызвана функция draw_tree"
                  );
                  draw_v n i j;
                  draw_tree t1 (i-25) (j-41) 1;
                  draw_tree t2 (i+25) (j-41) 2;
;;                   

let t = B (1,B (2,B (4,L,L),B (5,L,L)),B (3,L,L));;
draw_tree t 400 300 0;;
read_key();;