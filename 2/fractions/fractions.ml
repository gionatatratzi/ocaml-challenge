let is_posfrac (a,b) = 
  if (a>0 && b>0) && (b <> 0) then true else false;;

let compare_posfrac (a,b) (c,d) =
  if a*d = b*c && is_posfrac (a,b) && is_posfrac (c,d) then 0
  else if a*d > b*c  && is_posfrac (a,b) && is_posfrac (c,d) then 1
  else -1;;

assert (compare_posfrac (1,2) (2,4) == 0);;
assert (compare_posfrac (1,2) (1,3) == 1);;
assert (compare_posfrac (1,2) (2,3) == -1);;

let compare_frac (a,b) (c,d) =
  if a*d = b*c then 0
  else if a*d > b*c then 1
  else -1;;