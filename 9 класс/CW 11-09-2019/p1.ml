(* Мат ожидание чисел от 10 до 99 *)

let sumnum n =
  if not (n<100 && n>9) then failwith "Error: too many numbers";
  (n mod 10)+((n/10) mod 10)
;;

let expictation() =
  let sum = ref 0. in
  begin
    for i = 10 to 99 do
      sum:=!sum+.(1./.90.)*.(float(sumnum i));
    done;
    !sum;
  end;
;;

print_float (expictation());;
print_newline();;
