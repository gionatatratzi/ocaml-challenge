let rec enum_int = function
  | 0 -> 0
  | n when n>0 -> let m = enum_int (n-1) in
    if m>=0 then -(m+1) else -m
  | _ -> failwith "bu";;

assert (List.init 10 enum_int = [0; -1; 1; -2; 2; -3; 3; -4; 4; -5]);;