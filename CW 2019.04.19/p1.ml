type tree = N of int*tree*tree | L;;

let main n = 
  let t = ref L and
  rec f t n =
    if n = 0 then Lef else f 