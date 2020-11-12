let rec main n = 
    if n = 0 then 1. 
    else ((365.-.(float_of_int n)+.1.)/.365.)*.(main (n-1));;                        

print_float (1. -. (main (read_int())));;
print_newline();;
