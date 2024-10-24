type parrot = Some of bool | None;;

let parrot_trouble parla orario = match (parla,orario) with
  | (p,o) when ((o >= 0 && o < 7) || (o > 20 && o <= 23)) && p -> Some true
  | (p,o) when not(o >= 0 && o <= 23) -> None
  | _ -> Some false;;