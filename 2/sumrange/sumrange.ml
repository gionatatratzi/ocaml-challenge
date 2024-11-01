let sumrange a b =
  if a > b then 0
  else (b - a + 1) * (a + b) / 2;;

assert (sumrange 0 1 = 1);;
assert (sumrange 1 3 = 6);;
assert (sumrange 3 2 = 0);;