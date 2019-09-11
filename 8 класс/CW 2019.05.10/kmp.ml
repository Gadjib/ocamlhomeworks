open String;;



let automat str =
  let s = ref 0 in
  begin
    for i = 0 to (length str)-1 do
