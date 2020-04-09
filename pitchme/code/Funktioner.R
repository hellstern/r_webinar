# **************************
# User Defined Functions (UDF)
# **************************

function.name <- function(arguments) 
{
  computations on the arguments	
  some other code
}

# Min første funktion
minForsteFun <- function(n)
{
  n+10
}

k <- minForsteFun(10)
k

# **************************
# Positiv - Negativ - Nul
# **************************
check <- function(x) {
  if (x > 0) {
    result <- "Positivt tal"
  }
  else if (x < 0) {
    result <- "Negativt tal"
  }
  else {
    result <- "Tallet er = 0"
  }
  return(result)
}

check(10)

# **************************
# Fahrenheit til Celsius
# **************************
fahrenheit_to_celsius <- function(temp_F) {
  temp_C <- (temp_F - 32) * 5 / 9
  return(temp_C)
}

fahrenheit_to_celsius(32)

# **************************
# Default arguments
# **************************

# Funktion med argumenter // Værdier
function.default <- function(a = 3, b = 6) {
  result <- a * b
  print(result)
}

# Brug af funktionen uden argumenter
function.default()

# Brug af funktionen med nye elementer
function.default(9,5)


# **************************
# Ugedage
# **************************
UgeDagNr <- 2

UgeDagTekst <- function(UgeDagNr) {
  switch(UgeDagNr,
         "Mandag",
         "Tirsdag",
         "Onsdag",
         "Torsdag",
         "Fredag",
         "Lørdag",
         "Søndag")
}

UgeDagTekst(2) 




# **************************
# Primtal
# **************************
PrimtalCheck <- function(x){
  if (x == 2) {
    resultat = "Tallet er et primtal"
  } else if (any(x %% 2:(x-1) == 0)) {
    resultat = "Tallet er IKKE et primtal"
  } else { 
    resultat = "Tallet er et primtal"
  }
  resultat
}

PrimtalCheck(2)


# **************************
# Time
# **************************
system.time({
  # Do something that takes time
  x <- 1:100000
  for (i in seq_along(x))  x[i] <- x[i]+1
})


func_navn <- function (argument) {
  kode - statment
}

