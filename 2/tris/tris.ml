let tris_forse1 (a,b,c,d) = function
  | (x,y,z,_) when x=y=z -> true
  | (x,y,_,z) when x=y=z -> true
  | (x,_,y,z) when x=y=z -> true
  | (_,x,y,z) when x=y=z -> true
  | _ -> false;;
  
let tris_forse2 (a,b,c,d) = 
  if a=b=c || a=c=d || a=b=d || b=c=d then true else false;;

let tris_forse3 (a,b,c,d) = match (a,b,c,d) with
  | (x,y,z,_) when x=y=z -> true
  | (x,y,_,z) when x=y=z -> true
  | (x,_,y,z) when x=y=z -> true
  | (_,x,y,z) when x=y=z -> true
  | _ -> false;;

let tris_forse4 (a,b,c,d) = 
  a=b=c || a=c=d || a=b=d || b=c=d;; 

let tris_forse5 (a,b,c,d) = 
   a=b=c || a=c=d || a=b=d || b=c=d;;

let tris = function
  | (x,y,z,_) when x=y && y=z -> true
  | (x,y,_,z) when x=y && y=z -> true
  | (x,_,y,z) when x=y && y=z -> true
  | (_,x,y,z) when x=y && y=z -> true
  | _ -> false;;

let hand () = 
  (Random.int(10) + 1,
  Random.int(10) + 1,
  Random.int(10) + 1,
  Random.int(10) + 1);;

tris(hand ());;
