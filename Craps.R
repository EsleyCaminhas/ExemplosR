somar_dois_dados = function(){
  d = sample(c(1,2,3,4,5,6), 2, replace = T)
  return(sum(d)) 
}

craps = function(){
  d1 = somar_dois_dados()
  if (d1 == 7 | d1 == 11){
    return("V")
  } else {
    if (d1 == 2 | d1 == 3 | d1 == 12){
      return("D")
    } else {
      return(d1)
    }
  }
}

n = 0; v = 0; d = 0

while (n < 10000){
  primeira_jogada = craps()
  if (primeira_jogada == "V"){
    v = v + 1 
    n = n + 1
  } else {
    if (primeira_jogada == "D"){
      d = d + 1
      n = n + 1
    } else {
      while(TRUE){
        nova_jogada = somar_dois_dados()
        if (primeira_jogada == nova_jogada){
          v = v + 1
          n = n + 1
          break
        } else {
          if (nova_jogada == 7){
            d = d + 1
            n = n + 1
            break
          }
        }
      }
    }
  }
}
sprintf("O jogador ganhou %d das %d partidas", v, n )
