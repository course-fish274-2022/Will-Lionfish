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

5. scripts/Patrone_Lionfish_Presentation.Rmd -> this file is the code that produces the slidedeck for the final presentation for the course

6. scripts/Patrone_Lionfish_Presentation.html -> this file is the slidedeck presentation for the course's final project

7. scripts/knitr_notes.Rmd -> this file contains my notes for the knitr lecture

8. scripts/knitr_notes.html -> this file contains my notes for the knitr lecture, set as an html document

9. scripts/Lionfish_Project.Rmd -> this file contains the R code for the project displayed in a .Rmd file to be knit


Plan for Future Weeks:

Week of 11/28: 
- Edit graphs to ensure that all formatting is accurate, axis labels are descriptive, and ReadMe file is up to date

Week of 12/5:
- Format the slidedeck for presentation purposes
- Add photographs to the slidedeck presentation
- Ensure the GitHub repository is organized and up to date
- Present on 12/8/2022