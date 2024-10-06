let nand a b = not (a && b);;

let nand2 a b = if a && b then false else true;;

let nand3 a b = match (a,b) with
  | (true,true) -> false
  | _ -> true
;;