type suit = S | H | D | C;;
type card = Card of int * suit;;

let s () = match Random.int 4 with 
  | 0 -> S
  | 1 -> H
  | 2 -> D
  | 3 -> C
  | _ -> failwith "sbagliato";;

let c () = (Card ((Random.int(10) + 1), s ()));;

let rndHand () = 
  (c (), c (), c (), c (), c ());;

let poker4 (Card(n1,s1), Card(n2,s2), Card(n3,s3), Card(n4,s4)) = 
  n1 = n2 && n2 = n3 && n3 = n4 && n1 <> n2 && n2 <> n3 && n3 <> n4;;

let poker (c1,c2,c3,c4,c5) =
  poker4(c1,c2,c3,c4) ||
  poker4(c1,c3,c4,c5) ||
  poker4(c1,c2,c4,c5) ||
  poker4(c1,c2,c3,c5) ||
  poker4(c2,c3,c4,c5);;

poker (rndHand());;