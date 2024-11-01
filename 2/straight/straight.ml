type suit = S | H | D | C;;
type card = Card of int * suit;;

let seme () = match Random.int 4 with 
  | 0 -> S
  | 1 -> H
  | 2 -> D
  | 3 -> C
  | _ -> failwith "sbagliato";;

let carta () = (Card ((Random.int(10) + 1), seme ()));;

let rndHand () = 
  (carta (), carta (), carta (), carta (), carta ());;

let scala (Card(n1,s1), Card(n2,s2), Card(n3,s3), Card(n4,s4), Card(n5,s5)) = 
  n1 > n2 && n2 > n3 && n3 > n4 && n4 > n5 && n1 <> n2 && n2 <> n3 && n3 <> n4 && n4 <> n5;;
  
scala (rndHand());; 