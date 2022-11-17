#Will Patrone
#FISH 274 Project
#Autumn 2022

#Install Packages
install.packages('tidyverse')

#Load packages
library(tidyverse)


#Reading in raw data
surveys <- read.csv("data/REEF_AllSurveyData_FISH274.csv")

#Filter data, group all data by the year of the survey
surveys %>%
  select(geogr, habitat, Survey_month, Survey_year, Abundance2) %>% 
  group_by(year) %>% 
  summarize(mean(Abundance2))
  