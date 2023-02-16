# MechaCar_Statistical_Analysis

Using R language and environment for statistical computing review of MechaCar prototypes

AutosRUs is a car manufacturing commpany that is finally realizing that their decision making process could be moved into the 21st century.<br> The Data Analytics Team is in charge of performing retrospective analysis of historical data, analytical verification and validation of current automotive specifications and study design of future product testing.<br> The AutosRUs executive team recognizes that the most successful automobile launches utilize data analytics in every decision making process.<br>

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress.<br> AutosRUs’ upper management has called on me and the data analytics team to review the production data for insights that may help the manufacturing team.

We will use [R programming language](https://github.com/MilosPopov007/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.RScript.R) in this Data Analysis.<br> R has solidified itself in academia and industry as one of the go-to programming languages for statistical modelling and hypothesis testing.<br> In recent years, R developers have extended R's capabilities to generate machine learning algorithms and other advanced models to ensure that R can be used in every stage of data analytics.<br>

In this Data Analysis me and the data analytics team will do the following:
* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers

![This is an image](https://github.com/MilosPopov007/MechaCar_Statistical_Analysis/blob/main/car.png)

## Part 1: Linear Regression to Predict MPG

The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using R programming language , we design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. Perform Linear regression was performed using the lm() function and summary() function, determine the p-value and the r-squared value for the linear regression model

* In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, vehicle_length, ground_clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words vehicle_length, ground_clearance have a significant impact on MechaCar mpg prototypes.
* Linear regression asks if we can predict values for variable A using a linear model and values from variable B. If there is no significant linear relationship, each dependent value would be determined by random chance and error. Therefore, our linear model would be a flat line with a slope of 0. To quantify how well our linear model can be used to predict future observations, our linear regression functions will calculate an r-squared value(Our Multiple R-squared:  0.7149). The p-value of our linear regression analysis is (p-value: 5.35e-11), which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.
* From our linear regression model,  Multiple R-squared:  0.7149, which means that roughly 71 % of all mpg predictions will be correct when using this linear model.<br> When an intercept is statistically significant, it means there are other variables and factors that contribute to the variation in MPG that have not been included in our model. These variables may or may not be within our dataset and may still need to be collected or observed.

![This is an image](https://github.com/MilosPopov007/MechaCar_Statistical_Analysis/blob/main/summary_1.png)

## Part 2: Summary Statistics on Suspension Coils

The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots.<br>The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.<br> In R I created a summary statistics table to show:
* The suspension coil’s PSI continuous variable across all manufacturing lots.
* The following PSI metrics for each lot: mean, median, variance, and standard deviation.


* Current manufacturing data meet this design specification ( variance of the suspension coils must not exceed 100 pounds per square inch ) for all manufacturing lots in total, but not for individual Lot_3. There is definitely a problem with manufacturing Lot_3 that needs to be addressed.

![This is an image](https://github.com/MilosPopov007/MechaCar_Statistical_Analysis/blob/main/PSI_stat.png)

![This is an image](https://github.com/MilosPopov007/MechaCar_Statistical_Analysis/blob/main/Lots_PSI.png)

## Part 3: T-Test on Suspension Coils

Using the t.test() function in R I want to test the data to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.<br>
The p-value, or probability value, tells us the likelihood that we would see similar results if we tested our data again, if the null hypothesis is true. Therefore, we use the p-value to provide quantitative evidence as to which of our hypotheses are true. To determine which hypothesis is most likely to be true, we compare the p-value against a significance level. A significance level (also denoted as alpha or ɑ) is a predetermined cutoff for our hypothesis test. When designing our hypothesis, we would determine the significance level based on the importance of our findings. In this Analysis, I will use a significance level of 0.05.

* t-Test for all manufacturing lots produced p-value = 0.06028. Our p-value is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

![This is an image](https://github.com/MilosPopov007/MechaCar_Statistical_Analysis/blob/main/t_test_total.png)

*  t-Test for Lot_1 produced p-value = 1. Our p-value is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

![This is an image](https://github.com/MilosPopov007/MechaCar_Statistical_Analysis/blob/main/t_test_lot_1.png)

* t-Test for Lot_2 produced p-value =  0.6072. Our p-value is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

![This is an image](https://github.com/MilosPopov007/MechaCar_Statistical_Analysis/blob/main/t_test_lot2.png)

*  t-Test for Lot_3 produced p-value =  0.04168.  Our p-value is below our significance level. Therefore, we do have sufficient evidence to reject the null hypothesis, and we would state that the two means are not statistically similar.

![This is an image](https://github.com/MilosPopov007/MechaCar_Statistical_Analysis/blob/main/t_test_lot3.png)

## Part 4: Study Comparing the MechaCar to the Competition

We can expand our findings using R, designing a statistical study to compare the performance of the MechaCar vehicles against the performance of vehicles from other manufacturers.
*  Top Metrics of interest four consumers might be  cost, city or highway fuel efficiency, horse power, maintenance cost and safety rating.
* As an example, we can test city and highway fuel efficiency. Test will address the question whether the fuel efficiency of two samples from our core dataset is statistically different than our competition.
* For this purpose we would use a two-sample t-Test. Two-sample t-Test is used to test the following hypotheses:

H0 : There is no statistical difference between the two observed sample means.<br>
Ha : There is a statistical difference between the two observed sample means.
* To have a successful two-sample t-Test we must insure that our data is:
Numerical and continuous
Each sample data was selected randomly from the population data
The input data is considered to be normally distributed
Each sample size is reasonably large
The variance of the input data should be very similar






