(* Число разбиений *)

let rec count_partitions n =
    let ans = ref 0 in
    begin
        for i = 1 to n - 1 do
            ans:=!ans+(count_partitions i)
        done;
        !ans+1
    end
;;

print_int (count_partitions (read_int()));;
print_newline();;
