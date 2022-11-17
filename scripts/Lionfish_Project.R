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
  group_by(year) %>%
  filter(year >= "2009") %>% 
  summarize(yearly_avg_abundance = mean(abundance))

#Graph Changes in abundance by year  
year_df %>% 
  ggplot(aes(x = year, y = yearly_avg_abundance))+
  geom_point()+
  theme_bw()+
  scale_x_log10()+
  scale_y_log10()+
  labs(title = "Yearly Abundance of Lionfish in the Flordia Keys", y = "Year", x = "Relative Abundance of Lionfish")+
  geom_smooth(method = lm)

