type season = Spring | Summer | Autumn | Winter;;

let squirrel_play n season = match (n,season) with
  | (n,Spring) when n >= 15 && n <= 30 -> true
  | (n,Summer) when n >= 15 && n <= 35 -> true
  | (n,Autumn) when n >= 15 && n <= 30 -> true
  | (n,Winter) when n >= 15 && n <= 30 -> true
  | _ -> false;;



assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;  