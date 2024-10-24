type weekday = Mo | Tu | We | Th | Fr;;
type course = ALF | LIP;;

let isLecture d c = match (d,c) with
  | (ALF,Th) -> true
  | (ALF,Tu) -> true
  | (ALF,Fr) -> true
  | (LIP,We) -> true
  | (LIP,Th) -> true
  | _ -> false;;

(*
The weekly calendar of lectures is the following:
- ALF: Tuesday, Thursday, Friday
- LIP: Wednesday, Thursday
*)
