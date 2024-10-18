let is_even = function
  | a when a mod 2 == 0 -> true
  | _ -> false;;

let win a b = match (a,b) with
  | a,b when (a >= 1 && a <= 5) && (b >= 1 && b <= 5) && is_even(a + b) -> 1
  | a,b when (a >= 1 && a <= 5) && (b < 1 || b > 5) -> 1
  | a,b when (a >= 1 && a <= 5) && (b >= 1 && b <= 5)  && not(is_even(a + b)) -> -1
  | a,b when (a < 1 || a > 5) && (b >= 1 && b <= 5) -> -1
  | _ -> 0;;

