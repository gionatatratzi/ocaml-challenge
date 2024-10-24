type card = Joker | Val of int;;

let win g b = match (g,b) with
  | Joker,Joker -> false
  | Joker,Val b when b >= 1 && b <= 10 -> true
  | Val a,Joker when a >= 1 && a <= 10 -> false
  | Val a,Val b when (a >= 1 && a <= 10) && (b >= 1 && b <= 10) && a > b -> true
  | Val a,Val b when (a >= 1 && a <= 10) && (b >= 1 && b <= 10) && a < b -> false
  | _ -> failwith "errore: range non compreso tra 1 e 10";;