let minmax3 a b c =
  let min x y = if x < y then x else y in
  let max x y = if x > y then x else y in
  ((min (min a b) c), (max (max a b) c));;
