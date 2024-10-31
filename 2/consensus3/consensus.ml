let consensus3 (f0,f1,f2) = fun n -> match (f0 n, f1 n, f2 n) with
  | (y0,y1,_) when y0 = y1 -> Some y0
  | (y0,_,y2) when y0 = y2 -> Some y0
  | (_,y1,y2) when y1 = y2 -> Some y1
  | _ -> None;;


consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 1 = Some 5;;
consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 2 = Some 2;;
consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 3 = None;;