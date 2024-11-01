let dice n = 
  let perc = 1 + Random.int(100) in
  if n >= perc then 6
  else 1 + Random.int(5);;

