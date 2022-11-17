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
year_df <- surveys %>%
  group_by(Survey_year) %>% 
  summarize(yearly_avg_abundance = mean(Abundance2))

#Map Changes in abundance by year            