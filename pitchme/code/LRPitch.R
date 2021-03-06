library(readxl)
library(ggplot2)

# Data
height_weight <- read_excel("SeminarData.xlsx", sheet = "Linear_Regression")

# lm()
relation <- lm(weight~height, height_weight)

# predict()
a <- data.frame(height = 180)

result <-  predict(relation,a)
print(result)

# ggplot2
height_weight %>%
  ggplot(aes(weight, height)) +
  geom_point(color="red", size = 2) +
  geom_smooth(method="lm", se=TRUE, color ="blue") +
  xlab("V�gt i Kg.") +
  ylab("H�jde i cm.") +
  ggtitle("V�gt og h�jde i forhold til hinanden", subtitle = "Data er fiktive")