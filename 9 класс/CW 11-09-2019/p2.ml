let sumnum n =
  if not (n<1000 && n>99) then failwith "Error: too many numbers";
  (n mod 10)+((n/10) mod 10)+((n/100) mod 10)
;;

let expictation() =
  let sum = ref 0. in
  begin
    for i = 100 to 999 do
      sum:=!sum+.(1./.900.)*.(float(sumnum i));
    done;
    !sum;
  end;
;;

print_float (expictation());;
print_newline();;