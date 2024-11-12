let rec f = function
    [] -> (0,0)
  | a::l when a mod 2 = 0 ->
    let (ep,es) = f l in (ep+1,max (ep+1) es)
  | a::l -> let (ep,es) = f l in (0,es)
;;

let consecutive_even l = snd (f l);;

assert(consecutive_even [] = 0);;
assert(consecutive_even [1;2;3;4;5;6] = 1);; 
assert(consecutive_even [1;2;2;3;4;5] = 2);;
assert(consecutive_even [1;2;3;4;2;5] = 2);;
assert(consecutive_even [1;2;2;3;4;2;5] = 2);;
assert(consecutive_even [1;2;2;2;3;4;2;6;5] = 3);;