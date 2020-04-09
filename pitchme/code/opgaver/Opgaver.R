
# ****************************
# Sum to tal
# ****************************
MinSum <- function(x, y) {
  +   return(x + y)}

MinSum(10, 2)




# ****************************
# Division med 3
# ****************************
division3 <- function(x){
  if(x%%3==0){
    resultat = "Tallet kan divideres med 3"
  }else {
    resultat = "Tallet kan IKKE divideres med 3"
  }
  resultat
}

division3(10)




# ****************************
# Rabat & Pris
# ****************************
Rabat <- function(SalgUdenRabat){
  if (SalgUdenRabat <= 1000) {
    resultat = c("Ingen rabat, prisen bliver: ", SalgUdenRabat)
  } else if (SalgUdenRabat <= 5000){
    resultat = c("Rabat er 10%, prisen bliver: ", SalgUdenRabat-(SalgUdenRabat*0.1))
  } else {
    resultat = c("Rabat er 20%, prisen bliver: ", SalgUdenRabat-(SalgUdenRabat*0.2))
  }  
  print(resultat)
}

Rabat(2000)




# ****************************
# Print primtal mindre end 50
# ****************************

# For Loop
tal = 0:50

for (x in tal){
  if (x == 2)
    print(x)
  else if (any(x %% 2:(x-1) == 0))
    next
  else {
    print(x)
  }
}
