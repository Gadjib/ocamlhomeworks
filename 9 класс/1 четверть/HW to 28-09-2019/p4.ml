let f = open_in_bin "p4.txt";;

let main f =
    let rec func f n b = 
        try 
            let i = input_byte f in 
                match i with
                | 176 -> if b then func f (n+1) false else func f n false
                | 208 -> func f n true
                | _   -> func f n false
        with
            End_of_file -> n
    in func f 0 false
;;

print_int (main f);;
