(* Паталогическая сортировка *)
type color = White of int*int | Grey of int*int | Black of int*int;;

let l = [White (1,4);White (3,2);White (4,2);White (4,3)];;

let top_sort l =
