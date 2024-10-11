let mux2 s0 a b = (not(s0) && b) || (s0 && a);;

let mux2_2 s0 a b = if (not(s0) && b) || (s0 && a) then true else false;;

let mux2_3 s0 a b = match (s0,a,b) with
  | (false,_,true) -> true
  | (true,true,_) -> true
  | _ -> false
;;

let mux4 s1 s0 a0 a1 a2 a3 = (not(s1) && mux2 s0 a1 a0) || (s1 && mux2 s0 a3 a2);;

assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;