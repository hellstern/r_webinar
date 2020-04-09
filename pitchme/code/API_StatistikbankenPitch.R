library(statsDK)
library(tidyverse)

# 17.207 poster
folk2 <- retrieve_data("FOLK2", Tid = "1980")

folkKon <- 
  folk2 %>%  
  group_by(KøN, HERKOMST, TID) %>% 
  summarise(INDHOLD = sum(INDHOLD))


ggplot(data = folkKon, aes(x = factor(TID), y = INDHOLD, fill = factor(KØN))) +
  geom_col(position = "dodge") + 
  facet_wrap(~ HERKOMST, scale = "free_y", ncol = 2) 