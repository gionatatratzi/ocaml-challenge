let rotate n lst =
  let len = List.length lst in
  if len = 0 then lst (* Handle the case of an empty list *)
  else
    let n = n mod len in
    let n = if n < 0 then n + len else n in (* Handle negative rotations *)
    let rec split_at k acc lst =
      match k, lst with
      | 0, _ -> (List.rev acc, lst)
      | _, [] -> (List.rev acc, [])
      | k, h :: t -> split_at (k - 1) (h :: acc) t
    in
    let (left, right) = split_at n [] lst in
    right @ left
;;

assert(rotate 0 [5;6;7;8] = [5;6;7;8]);;  
assert(rotate 1 [5;6;7;8] = [6;7;8;5]);;  
assert(rotate 2 [5;6;7;8] = [7;8;5;6]);;  
assert(rotate 3 [5;6;7;8] = [8;5;6;7]);;  
assert(rotate 4 [5;6;7;8] = [5;6;7;8]);;  