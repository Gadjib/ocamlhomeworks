type prefix = Q of prefix*prefix | A of int;;

let rec matching l p =
	match l with
	| [] -> failwith "Нинада мне никаких пустых спискав я нимагу так"
	| hd::[] -> (match p with
				| Q (q1,q2) -> (if hd = 0 then (match q1 with
				 							  | A (i) -> i
				 							  |_ -> failwith "Вы шо нинада задавать списак по катораму нидайти до канца" )
										 else (match q2 with
				 							  | A (i) -> i
				 							  |_ -> failwith "Вы шо нинада задавать списак по катораму нидайти до канца" ))
				| A (i) -> failwith "Вы шо нинада задавать списак по катораму нидайти до канца")
	| hd::tl -> (match p with
				| Q (q1,q2) -> (if hd = 0 then matching tl q1 else matching tl q2)
				| _ -> failwith "Вы шо нинада задавать списак по катораму нидайти до канца")
;;

let p = Q ((A 5),(Q (A 10),Q((A 21),(A 30))));;