# Webinar
# Dag 1
# Tue Hellstern


# ***************************
# Grundlæggende syntaks
# *************************** 


# ***************************
# Working Directory
# *************************** 
getwd()
setwd("C:/Users/Tue Hellstern/Documents/GitHub/r_webinar/r_kode/webinar_dag1")
# setwd("C:/Users/Tue Hellstern/Documents/GitHub")

# ***************************
# Pakker
# *************************** 



# ***************************
# Indlæsning af Data
# *************************** 




# ***************************
# Hjælp
# *************************** 

# Hjælp til en specifik funktion - mean
?mean


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
