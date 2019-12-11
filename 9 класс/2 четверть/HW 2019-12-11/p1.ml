(* По м.с. напечатать кол-во рёбер *)

open Array;;

let m = [| [| 0; 1; 1; 0; 0; 0 |];
           [| 0; 0; 0; 1; 0; 1 |];
           [| 0; 0; 0; 0; 0; 1 |];
           [| 0; 0; 0; 0; 1; 0 |];
           [| 0; 0; 0; 0; 0; 0 |];
           [| 0; 0; 0; 0; 1; 0 |];
        |]
;;

let count_edges m =
    let ans = ref 0 in
    begin
        for i = 0 to (length m)-1 do
            for j = 0 to (length m)-1 do
                ans:=!ans+((m.(i)).(j));
            done
        done;
        !ans;
    end
;;

print_int (count_edges m);;
print_newline();;
