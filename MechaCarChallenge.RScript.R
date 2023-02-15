library(dplyr) #  library() function to load the dplyr package

MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) # Import and read in the MechaCar_mpg.csv file as a dataframe

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg) # generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)) # generate summary statistics

Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #  import and read in the Suspension_Coil.csv file as a table

total_summary <- Suspension_Coil %>%  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #  RScript that creates a total_summary dataframe  for PSI column

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') # RScript that creates a lot_summary dataframe 

t.test(Suspension_Coil$PSI, mu=1500) # t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch

lot_1 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot1" ) # subset lot_1
lot_2 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot2" ) # subset lot_2
lot_3 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot3" ) # subset lot_3

t.test(lot_1$PSI, mu=1500) # t-test lot_1
t.test(lot_2$PSI, mu=1500) # t-test lot_2
t.test(lot_3$PSI, mu=1500) # t-test lot_3