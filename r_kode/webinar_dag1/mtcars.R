# ***************************
# mtcars
# Standard datasæt i R
# ***************************

data()
data(mtcars)

colnames(mtcars)           # Viser "overskrifter"
head(mtcars) # 6 rækker som default
head(mtcars, n=10) # 10 rækker
tail(mtcars, n=10)
str(mtcars)
colnames(mtcars)
rownames(mtcars)

summary(mtcars)
cor(mtcars)


edit(mtcars) # Det er muligt at editere data

mtcars$mpg
colnames(mtcars)
mtcars[,2:4]
mtcars[,c(2,4)]

mtcars$mpg>20            # Giver TRUE/FALSE
mtcars[mtcars$mpg>20,]   # Giver data

mtcars[mtcars$mpg>20,c(1,4)]          # Kun kolone 1 og 4 med mpg>20
mtcars[mtcars$mpg>20,c("mpg","hp")]   # Kun kolone 1 og 4 med mpg>20 ved at bruge navne

mpg20 <- mtcars$mpg > 20
cols <- c("mpg", "hp")
mtcars[mpg20, cols]

cars <- cbind(car = rownames(mtcars), mtcars)
rownames(cars) <- NULL


# ***************************
# PLOT
# ***************************
plot(mtcars$disp, mtcars$mpg)

# Scatterplot
plot(mtcars$disp, mtcars$mpg,
     xlab="Engine displacement",
     ylab="mpg", main="MPG compared with engine displacement")

plot(mtcars$disp, mtcars$mpg,
     xlab="Engine displacement",
     ylab="mpg", main="MPG compared with engine displacement",
     las=1)





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
          