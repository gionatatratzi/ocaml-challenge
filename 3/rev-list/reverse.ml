let rec rev = function
  | [] -> []
  | hd::tl -> (rev tl) @ [hd];;

rev [1;2;3;4;5] ;;