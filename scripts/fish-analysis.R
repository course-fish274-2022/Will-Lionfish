##Load Packages##
library(dplyr)


fish_data <- read.csv("Gaeta_etal_CLC_data_1.csv")

#Add a column describing the lenght of an individual as 'big' or 'small
fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

#Remove fish with a scalelenght less than 1 due to an error. Could also have 
  #added it to the fish_data_cat line of code
fish_data_cat_fixed <-  fish_data_cat %>% 
  filter(scalelength > 1)

#Alternative way of doing it
fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small")) %>% 
  filter(scalelength > 1)
