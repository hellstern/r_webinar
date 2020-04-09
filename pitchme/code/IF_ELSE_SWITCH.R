# **************************
# if
# **************************
x <- 3

if (x == 0) {
  print("X er ligmed 0")
}

# **************************
# if...else
# **************************
x <- -1

if (x == 0) {
  print("X er ligmed 0")
} else {
  print("X er ikke 0")
}

# **************************
# if...else if..else
# **************************
x <- -10

if (x == 0) {
  print("X er ligmed 0")
} else if (x > 0) {
  print("X er et positivt tal")
} else {
  print("X er et negativt tal")
}


# **************************
# SWITCH
# **************************
UgeDagNr <- 2

UgeDagTekst <- switch(UgeDagNr,
                      "Mandag",
                      "Tirsdag",
                      "Onsdag",
                      "Torsdag",
                      "Fredag",
                      "Lørdag",
                      "Søndag"
                      )

UgeDagTekst
