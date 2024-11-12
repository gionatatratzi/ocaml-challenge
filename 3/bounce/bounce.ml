let bounce n x =
  let m = x mod (2 * n) in
  if m < n then m
  else 2 * n - m
;;