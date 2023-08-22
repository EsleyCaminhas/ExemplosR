# A sempre troca de porta, B nunca troca de porta

Sucesso_A = 0
Sucesso_B = 0

Portas = c(1,2,3)

for (i in 1:100){
  
  Porta_premiada_A = sample(Portas, 1)
  Porta_escolhida_A = sample(Portas, 1)
  
  if (Porta_escolhida_A == Porta_premiada_A){
    Porta_aberta_A = sample(setdiff(Portas, Porta_escolhida_A), 1)
  } else {
    Porta_aberta_A = setdiff(Portas,
                             c(Porta_escolhida_A,Porta_premiada_A))
  }
  
  Porta_premiada_B = sample(Portas, 1)
  Porta_escolhida_B = sample(Portas, 1)
  
  if (Porta_escolhida_B == Porta_premiada_B){
    Porta_aberta_B = sample(setdiff(Portas, Porta_escolhida_B), 1)
  } else {
    Porta_aberta_B = setdiff(Portas,    
                             c(Porta_escolhida_B,Porta_premiada_B))
  }
  
  Escolha_de_A = setdiff(Portas, c(Porta_escolhida_A,Porta_aberta_A))
  
  Escolha_de_B = Porta_escolhida_B
  
  if (Escolha_de_A == Porta_premiada_A){
    Sucesso_A = Sucesso_A + 1
  } 
  
  if (Escolha_de_B == Porta_premiada_B){
    Sucesso_B = Sucesso_B + 1
  }
}

sprintf("Os participantes A e B ganharam respectivamente %d e %d das 100 tentativas ", Sucesso_A, Sucesso_B)