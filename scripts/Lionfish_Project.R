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
#Group by year so summarize will calculate based on the year
year_df <- surveys %>%
  group_by(year) %>%
  filter(year >= "2009") %>% 
  summarize(yearly_avg_abundance = mean(abundance))

#Graph Changes in abundance by year  
year_df %>% 
  ggplot(aes(x = year, y = yearly_avg_abundance))+
  geom_point()+ #scatterplot
  theme_bw()+ #make background black and white
  scale_y_log10()+
  labs(title = "Yearly Abundance of Lionfish in the Flordia Keys", x = "Year", 
       y = "Relative Abundance of Lionfish")+
  geom_smooth(method = lm) #insert linear model


#Create two data frames to stack them for experience calculations
#All results of novice surveyors
expN_df <- surveys %>%
  select(year, exp, abundance) %>% 
  filter(exp == "N") %>% 
  group_by(year) %>%
  summarise(yearly_abd = mean(abundance))

#All results of expert surveyors
expE_df <- surveys %>%
  select(year, exp, abundance) %>% 
  filter(exp == "E")%>% 
  group_by(year) %>%
  summarise(yearly_abd = mean(abundance))

#Graph expert vs novice using layers
ggplot()+
  geom_point(data = expE_df, aes(x = year, y = yearly_abd), color = 'aquamarine3')+
  geom_point(data = expN_df, aes(x = year, y = yearly_abd), color = 'deeppink')+
  scale_y_log10()+
  labs(x = "Year", y= "Abundance", title= "Abundance Measures for Novice vs Expert Surveyors")

#Graph all data based on the year
surveys %>% 
  ggplot(aes(x = abundance))+
  geom_histogram()+
  facet_wrap(~year)+ #makes it so each year has its own graph
  labs(x = "n", y= "Abundance Levels", title= "Abundance Measures Based on Year")

#Graph abundance based on habitat survey was conducted in
surveys %>% 
  group_by(year) %>%
  ggplot(aes(x = year, y = abundance))+
  geom_histogram(stat = 'identity') +
  facet_wrap(~habitat)+  
  labs(x = "Year", y= "Abundance", title= "Abundance Measures Based on Habitat")
