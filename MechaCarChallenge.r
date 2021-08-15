# setwd("D:/Users/MIHMadyun/DataAnalytics/Module15_Statistics_and_R/MechaCar_Statistical_Analysis")
# load the dplyr library
library(dplyr)

#
# Deliverable 1: Linear Regression to Predict MPG
#
mecha_mpg <- read.csv('resources/MechaCar_mpg.csv') 
names(mecha_mpg)

#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg)

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg))

#
# Deliverable 2: Create Visualizations for the Trip Analysis

# read in the coil sample data
suspen_coil <- read.csv('resources/Suspension_Coil.csv') 

# gerenrate summary stats for all coils
total_summary <- suspen_coil %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# gerenrate coil summary stats by lot
lot_summary <- suspen_coil %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#calculate the 99% confidence interval value (mean +- this value)
2.57 * total_summary$SD / sqrt(nrow(total_summary)) # 15.47

suspen_coil %>% count(Manufacturing_Lot) # 50 per lot - 150 total

2.57 * lot_summary[lot_summary$Manufacturing_Lot == "Lot3",]$SD / sqrt(50)

#
# Deliverable 3: T-Tests on Suspension Coils
#

#supplied population mean (mu)
mew <- 1500.0

# test total set
t.test(suspen_coil$PSI, mu=mew)

# one per lot
# Lot1
t.test(suspen_coil[suspen_coil$Manufacturing_Lot == 'Lot1',]$PSI, mu=mew)

# Lot2
t.test(suspen_coil[suspen_coil$Manufacturing_Lot == 'Lot2',]$PSI, mu=mew)

# Lot3
t.test(suspen_coil[suspen_coil$Manufacturing_Lot == 'Lot3',]$PSI, mu=mew)