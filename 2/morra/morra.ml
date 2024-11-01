type winner = Player | Computer | Tie ;;

let win (hp,gp) =
  let hc = 1 + Random.int(5) in
  let gc = Random.int(10) in 
  if (gp = hp + hc) && (gc <> hp + hc) then ((hc,gc), Player)
  else if gc = hp + hc then ((hc,gc), Computer)
  else ((hc,gc), Tie);;
  
win(2,5);;
 
