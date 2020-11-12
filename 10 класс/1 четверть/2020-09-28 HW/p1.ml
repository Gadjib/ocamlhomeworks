let rec check x y =
        if y = 1 then 
            false
        else
            if x>=y then
                true
            else
                if y mod x = 0 then
                    false
                else check (x+1) x 
;;

let main x y =
    let rec func x =
        if x>y then 0 else if check 2 x then (func (x+1))+1 else func (x+1) in
    func x
;;

let x = 1 and y = 2;;
print_float ((float_of_int (main x y))/.(float_of_int (y-x+1)));;
