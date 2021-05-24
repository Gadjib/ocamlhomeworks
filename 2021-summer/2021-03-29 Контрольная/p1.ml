let f = open_in "x.txt";;

let read_in f =
    let rec func f n =
        try
            let x = input_line f in func f (n+1)
        with
            End_of_file -> n
    in
    func f 0
;;

print_int (read_in f);;

close_in f;;
print_newline()
