# Will-Lionfish

The goal of this project is to examine changes in lionfish abundance
using various parameters (habitat type, surveyor level, year)

Data citation: REEF. 2021. Reef Environmental Education Foundation. World Wide 
Web electronic publication. www.REEF.org, date of download (12 April 2021).

To run this script, ensure that the following package is installed into R: 
tidyverse

There is a line of code in the script that will allow you to download the package
if it is not currently installed

Files in order of use:

1. data/REEF_AllSurveyData_FISH274.csv -> this dataset displays all surveys 
collected by REEF between 2009 and 2020, with habitat type, date, surveyor 
experience level, current, depth, and other data, in addition to the relative
abundance of lionfish in each survey

2. scripts/Lionfish_Project.R -> this script is used to generate plots of the
data, using the tidyverse package (specifically dplyr and ggplot2) to group and
summarize data before outputting graphs of the data

3. scripts/fish-analysis.R -> this script is used as a trial project. The script uses ggplot2 and dplyr to clean and display data on fish lengths

4. scripts/knitr_notes.Rmd -> this script is the notes for the 11/22 lecture on the knitr package. 