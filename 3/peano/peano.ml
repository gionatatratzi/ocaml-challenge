type nat = Z | S of nat;;

let rec iseven = function
  | Z -> true
  | S(Z) -> false
  | S(S(x)) -> iseven x;;

let rec halve = function
  | Z -> Z
  | S(Z) -> S(Z)
  | S(S(x)) -> let n = halve x in S(n);;

let rec add a b = match b with
  | Z -> a
  | S(b') -> S(add a b');;

let rec mul a b = match b with
  | Z -> Z
  | S(b') -> add a (mul a b');;

let rec equals a b = match (a,b) with
  | (Z,Z) -> true
  | (Z,_) -> false
  | (_,Z) -> false
  | (S(a'),S(b')) -> equals a' b';;

let rec leq a b = match (a,b) with
  | (Z,_) -> true
  | (_,Z) -> false
  | (S(a'),S(b')) -> leq a' b';;