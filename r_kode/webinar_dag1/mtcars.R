# ***************************
# mtcars
# Standard datasæt i R
# ***************************

# Build in datasæt i R
data()

# mtcars - load/hent
mycars <- mtcars           # Kan nu ses ude under Enviroment
colnames(mycars)           # Viser "overskrifter"


# ***************************
# Pakker - Jeg brugere her
# ***************************

install.packages("dplyr")  
library(dplyr)



# ***************************
# Tilføj/Ændre data - dplyr
# ***************************

# mutate
head(
  mutate(mtcars, displ_l = disp / 61.0237)
)

# select
head(  
  select(mtcars, cyl, mpg)
)

# Filter
filter(mtcars, cyl < 6, am == 1)
# eller - giver sammen resultat
filter(mtcars, cyl < 6 & am == 1)

# summarize 
summarize(mtcars, mean(disp))

# group_by 
by_cyl <- group_by(mtcars, cyl) 

head(by_cyl) # Vis group_by resultat
          