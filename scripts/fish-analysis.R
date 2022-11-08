##Load Packages##
library(dplyr)


fish_data <- read.csv("Gaeta_etal_CLC_data.csv")

#Add a column describing the lenght of an individual as 'big' or 'small'
fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

