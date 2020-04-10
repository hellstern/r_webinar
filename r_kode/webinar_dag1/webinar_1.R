# *************************** 
# Webinar
# Dag 1
# Tue Hellstern
# *************************** 


# ***************************
# Grundlæggende syntaks
# *************************** 
2 + 2  # Beregn
1:100 # printer 1 til 100
print("Hej med dig")

x <- 2
x * 2
x * x
x + x
x   # Viser værdien af x

y <- c(6, 7, 8, 9, 10) # Gemmer 6 til 10 i variablen y
# c() står for concatenate eller combine - Giver en vektor
y  # Viser y


x + y   # x lagt sammen med y
y
x * 2  # Ganger alle elementer i x med 2 - LOOP uden at være et LOOP ?

ls()   # Vis / List alle objekter

# Funktioner
length(y)     # Antallet af numre i vektoren
min(y)        # Minimumsværdien
max(y)        # Maksimumværdien
median(y)     # Medianen
sum(y)        # Summen
mean(y)       # Gennemsnittet
var(y)        # Variansen
sd(y)         # Standardafvigelsen


# Fjern et objekt
rm(x)  # Her x


# Logiske operatorer
x
x == 2        # "==" betyder "lig med"
x == 3        
x != 2        # "!=" betyder "ikke lig med"
x < 1         # "<" betyder "mindre end"
x > 1         # ">" betyder "større end"
x <= 2        # "<=" betyder "mindre eller lig med



# ***************************
# Working Directory
# *************************** 
getwd()
setwd("C:/Users/Tue Hellstern/Documents/GitHub/r_webinar/r_kode/webinar_dag1")
# setwd("C:/Users/Tue Hellstern/Documents/GitHub")


# ***************************
# Pakker
# *************************** 
## WWW sider
browseURL("https://cran.r-project.org")

library()  # Pakker der er på din computer
install.packages("dplyr")     # install
library(dplyr)                # load

update.packages("tidyverse")  # Update
remove.packages("tidyverse")  # Fjern


# ***************************
# Indlæsning af Data
# *************************** 




# ***************************
# Hjælp
# *************************** 
help("mean") # Hjælp til en specifik funktion - mean
help("plot")

?mean 
?plot

# Hjælp til en specifik pakke - base og tidyverse
help(package = "base")
help(package = "tidyverse")

install.packages("ggplot2")   # Installation af pakken "ggplot2"


# ***************************
# Plot in base R
# *************************** 
?plot

plot(x = mtcars$disp, y = mtcars$mpg)

# Akse - Tekster
disp_data <- mtcars$disp
mpg_data <- mtcars$mpg
plot(x = disp_data, y = mpg_data)


plot(mtcars[, 1:4])


# ***************************
# Links
# *************************** 

browseURL("https://www.r-project.org/about.html")
browseURL("https://www.rdocumentation.org")
browseURL("https://rweekly.org")
browseURL("https://ropensci.org/packages")
browseURL("https://www.r-graph-gallery.com/index.html")
