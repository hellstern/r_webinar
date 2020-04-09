#
# Opgave - Is Salg <> Temperatur
#

# Excel - Pakker
install.packages("tidyverse")
library(readxl)

# Data
IsSalg <- read_excel("SeminarData.xlsx", sheet = "Is_Salg")

# lm()
relation <- lm(Salg~Temp, data = IsSalg)

print(relation)
print(summary(relation))


# predict()
a <- data.frame(Temp = 24)
result <-  predict(relation, a)
print(result)


# ggplot
IsSalg %>%
  ggplot(aes(Temp,Salg)) +
  geom_point(color="red", size = 2) +
  geom_smooth(method="lm", se=TRUE, color ="blue") +
  xlab("Temperatur i C") +
  ylab("Salg af is i Kr.") +
  ggtitle("Salg af is i forhold til temperaturen", subtitle = "Data er fiktive")


# ggplot
IsSalg %>%
  ggplot(aes(Dato,Salg)) +
  geom_line(color = "blue") +
  xlab("Dato") +
  ylab("Salg af is i Kr.") +
  ggtitle("Salg af is fordelt på dato", subtitle = "Data er fiktive")
