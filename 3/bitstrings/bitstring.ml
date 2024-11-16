type bitstring = E | Z of bitstring | U of bitstring;;

let rec string_of_bitstring = function
  | E -> ""
  | Z s -> "0" ^ string_of_bitstring s
  | U s -> "1" ^ string_of_bitstring s
;;

let rec len = function
  | E -> 0
  | Z s -> 1 + len s
  | U s -> 1 + len s
;;

let rec countZ = function
  | E -> 0
  | Z s -> 1 + countZ s
  | U s -> countZ s
;;

let rec countU = function
  | E -> 0
  | U s -> 1 + countU s
  | Z s -> countU s
;;

let rec concat a b = match a with
  | E -> b
  | Z s -> Z(concat s b)
  | U s -> U(concat s b)
;;

let rec equals a b = match (a,b) with
  | (E,E) -> true
  | (Z a', Z b') -> equals a' b'
  | (U a', U b') -> equals a' b'
  | _ -> false
;;

let rec tl = function
  | E -> E
  | U s -> tl s
  | Z s -> tl s
;;

let rec prefix a b = match (a,b) with
  | (E,_) -> true
  | (U a', U b') -> prefix a' b'
  | (Z a', Z b') -> prefix a' b'
  | _ -> false
;;

let rec substring s1 s2 =
  if prefix s1 s2 then true
  else match tl s2 with
      E -> false
    | s2' -> substring s1 s2'
;;