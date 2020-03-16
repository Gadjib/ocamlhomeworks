(* Разобратб эту хрень *)

type lambda = Var of string | Ayy of lambda*lambda | Abs of string*lambda;;

let parse s = 
    let rec f s l =
        match s.[0] with
        | "
