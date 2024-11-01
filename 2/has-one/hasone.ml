let rec has_one n =
  if n < 0 then failwith "numero negativo"
  else if n = 0 then false 
  else if n mod 10 = 1 then true
  else has_one (n/10);; 

assert(has_one 10 = true);;
assert(has_one 220 = false);;
assert(has_one 911 = true);;
assert(has_one 451 = true);;
assert(try has_one (-1) |> fun _ -> false with _ -> true);;