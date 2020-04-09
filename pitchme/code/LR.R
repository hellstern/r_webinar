#
# Linear Regression - y = ax + b
#

# Input data
library(readxl)

# Data
height_weight <- read_excel("SeminarData.xlsx", sheet = "Linear_Regression")

# lm()
relation <- lm(weight~height, height_weight)

print(relation)
print(summary(relation))

# predict()
a <- data.frame(height = 180)

result <-  predict(relation,a)
print(result)

# Plot data
# Standard
# Scatter
scatter.smooth(height_weight$weight, height_weight$height, cex = 1.3, pch = 16, col = "blue", main = "Højde og Vægt", xlab = "Vægt i Kg",ylab = "Højde i cm")

# Linje
plot(height_weight$weight, height_weight$height, col = "blue", main = "Højde og Vægt - Regression",
     abline(lm(height_weight$height~height_weight$weight)), cex = 1.3, pch = 16, xlab = "Vægt i Kg", ylab = "Højde i cm")

# ggplot2
# install.packages("ggplot2")
library(ggplot2)

height_weight %>%
  ggplot(aes(weight, height)) +
  geom_point(color="red", size = 2) +
  geom_smooth(method="lm", se=TRUE, color ="blue") +
  xlab("Vægt i Kg.") +
  ylab("Højde i cm.") +
  ggtitle("V�gt og h�jde i forhold til hinanden", subtitle = "Data er fiktive")
