#
# Airline accidents
# 
# Tue Hellstern
#


# Grundlæggende


# Pakker
install.packages("tidyverse")
library(tidyverse)



# Data import
library(readxl)
airline_accidents <- read_excel("airline_accidents.xlsx")


# Plot med ggplot2
library(ggplot2)

ggplot(airline_accidents, aes(incidents_00_14, incidents_85_99))


