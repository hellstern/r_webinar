# mtcars
# Standard datasæt i R

data()
data("mtcars")

head(mtcars) # Første 6 Row
head(mtcars, n=10)
tail(mtcars)
colnames(mtcars)

edit(mtcars)
mtcars$cyl
mtcars[,c(2,4)]

mtcars[mtcars$mpg>20,]

# Plot
plot(mtcars$disp, mtcars$mpg,
     xlab = "Engine displacement",
     ylab = "MGP",
     main = "MPG compared with engine displacement")
