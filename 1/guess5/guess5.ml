let guess5 n = 
  if n < 1 || n > 5 then failwith "errore sei fuori range"
  else let r = (Random.int 5) + 1 in
  (n == r, r);;