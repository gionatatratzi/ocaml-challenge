let xor a b = (not(a) && b) || (a && not(b));;

let xor2 a b = if (not(a) && b) || (a && not(b)) then true else false;;

let xor3 a b = match (a,b) with
  | (false,true) -> true
  | (true,false) -> true
  | _ -> false
;;