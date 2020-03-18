open Array;;

let count n =
    let ans = init (length n+1) (fun _ -> make (length n.(0)+1) 0) in
    let rec f1 x y =
        if x >= (length n.(0)) then 
            0
        else
            if n.(y-1).(x) then
                (1 + ans.(y-1).(x+1))
            else 
                f1 (x+1) y
     in
     let rec f2 x y =
         if y > (length n) then
             ()
         else 
             if x < 0 then 
                 f2 (length n.(0)-2) (y+1)
             else
                 if x < (length n.(0)-2) then
                     if n.(y-1).(x) || n.(y-1).(x+1) then
                         (ans.(y).(x) <- 1+(ans.(y-1).(x+2));
                         f2 (x-1) y)
                     else
                     begin
                         let a1 = ans.(y-1).(x+2)
                         and a2 = f1 (x+2) y in
                         ans.(y).(x) <- max a1 a2;
                         f2 (x-1) y
                     end
                 else 
                     if n.(y-1).(x) || (x <> (length n.(0) - 1) && n.(y-1).(x+1)) then
                         (ans.(y).(x) <- 1;
                         f2 (x-1) y)
                     else
                         (ans.(y).(x) <- 0;
                         f2 (x-1) y)
             in
             f2 (length n.(0) - 1) 1;
             ans.(length n).(0)
;;

let m = [| [|false;false;false;false;true;false|];
           [|false;false;false;true;false;false|];
           [|false;false;false;false;true;false|]; |]
;;

print_int (count m);;
print_newline();;
