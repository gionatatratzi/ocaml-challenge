let rec enum_nat_nat = function
  | 0 -> (0,0)
  | n when n>0 -> let (a,b) = enum_nat_nat (n-1) in
    if b=0 then (0,a+1) else (a+1,b-1)
  | _ -> failwith "bu";;

  List.map enum_nat_nat [0;1;2;3;4;5;6;7;8;9;10;11;12;13;14;15];;