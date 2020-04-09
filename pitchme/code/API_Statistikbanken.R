# API - Statistikbanke
browseURL("https://www.statistikbanken.dk")
browseURL("https://www.statistikbanken.dk/statbank5a/default.asp?w=1920")

# Installer pakker
# R-pakken statsDK, er udviklet af Mikkel Freltoft Krogsholm.
# kan downloades på https://cran.r-project.org/.
# Findes dog ikke til de nye versioner af R
# Kan hentes via https://cran.r-project.org/src/contrib/Archive/statsDK/

# install.packages("statsDK")
install.packages("tidyverse")

# Aktiver de to pakker du skal bruge
library(statsDK)
library(tidyverse)

folk2 <- retrieve_data("FOLK2", Tid = "1980") # 17.207 poster

# Henter al data - BEMÆRK at afviklingen tager lang tid
# 61 MB - Omkring 5 minutter - 1.289.852 poster
# folk_all <- retrieve_data("FOLK2")

glimpse(folk2)

folkKon <- 
  folk2 %>%  
  group_by(KØN, HERKOMST, TID) %>% 
  summarise(INDHOLD = sum(INDHOLD))


head(folkKon)

ggplot(data = folkKon, aes(x = factor(TID), y = INDHOLD, fill = factor(KØN))) +
  geom_col(position = "dodge") + 
  facet_wrap(~ HERKOMST, scale = "free_y", ncol = 2) 



