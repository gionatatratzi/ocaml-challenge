let max_nat a b =
  if a>b then a+0 else b+0
;;

assert(max_nat 2 5 = 5);;
assert(max_nat 5 2 = 5);;