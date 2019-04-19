type tree = N of int*tree*tree | L;;

let rec dt t l =
  match l with
  |[] -> t
  |hd::tl -> match t with
             |L -> failwith "Incorrect way"
             |N (n,t1,t2) -> if hd = 1 then dt t1 tl else dt t2 tl;
;;

let pop_fst l = 
  match l with
  |[] -> failwith "Incorrect popping"
  |hd::tl -> tl;
;;

let get_fst l =
  match l with
  |[] -> failwith "Incorrect getting"
  |hd::tl -> hd;
;;

let main t =
  let rec f (tr:tree) l q w =
    match t with 
    |L -> failwith "It's impossible"
    |N (n,t1,t2) -> q:=(pop_fst !q); if t1<>L then q:=!q@[(w@[1])]; 
                    if t1<>L then q:=!q@[(w@[1])]; f (dt t (get_fst !l)) q (get_fst !l)
