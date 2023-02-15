# MechaCar_Statistical_Analysis

Using R language and environment for statistical computing review of MechaCar prototypes

AutosRUs is a car manufacturing commpany that is finally realizing that their decision making process could be moved into the 21st century.<br> The Data Analytics Team is in charge of performing retrospective analysis of historical data, analytical verification and validation of current automotive specifications and study design of future product testing.<br> The AutosRUs executive team recognizes that the most successful automobile launches utilize data analytics in every decision making process.<br>

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress.<br> AutosRUs’ upper management has called on me and the data analytics team to review the production data for insights that may help the manufacturing team.

We will use R programming language in this Data Analysis.<br> R has solidified itself in academia and industry as one of the go-to programming languages for statistical modelling and hypothesis testing.<br> In recent years, R developers have extended R's capabilities to generate machine learning algorithms and other advanced models to ensure that R can be used in every stage of data analytics.<br>

In this Data Analysis me and the data analytics team will do the following:
* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers

![This is an image](https://github.com/MilosPopov007/MechaCar_Statistical_Analysis/blob/main/car.png)

##Part 1: Linear Regression to Predict MPG

The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using R programming language , we design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. Perform Linear regression was performed using the lm() function and summary() function, determine the p-value and the r-squared value for the linear regression model

* In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, vehicle_length, ground_clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words vehicle_length, ground_clearance have a significant impact on MechaCar mpg prototypes.
* Linear regression asks if we can predict values for variable A using a linear model and values from variable B. If there is no significant linear relationship, each dependent value would be determined by random chance and error. Therefore, our linear model would be a flat line with a slope of 0. To quantify how well our linear model can be used to predict future observations, our linear regression functions will calculate an r-squared value. Our Multiple R-squared:  0.7149, and the p-value of our linear regression analysis is p-value: 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.
* From our linear regression model,  Multiple R-squared:  0.7149, which means that roughly 71 % of all mpg predictions will be correct when using this linear model.


