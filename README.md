# MechaCar_Statistical_Analysis
*Linear Regression to Predict MPG
**A multivariate linear regression model was built to determine to which factors were impacting MPG in the MechaCar prototypes. The factors included in this model are: vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, and AWD. Reviewing the summary report below, we can conclude:

***vehicle_length and ground_clearance provided non-random amounts of variance to the model. Both    
  variables had Pr(|t|) values substantially below even 0.001. It should be noted that vehicle_weight     had significance at the 0.1 level and should not be ruled out as a factor.

***Given the small p-value (5.35e-11) we would conclude the slopes are non-zero and would reject the       null hypothesis.

***The model is a moderate predictor of MPG and can be used for guidance on initial design decisions.     The reported R-squared value is 0.71, so ~71% of the result is explainable by the factors. But to use   a model to forecast production MPG and select a configuration for production builds you would want an   R-squared in the 90s.

![image](https://user-images.githubusercontent.com/69257381/129492174-81a8bd72-7c77-4362-b04f-beb5b94cbd8c.png)

 
*Summary Statistics on Suspension Coils
**The design requirements for the MechaCar suspension specify the variance of the suspension coils must not exceed 100 PSI. An analysis of the manufacturing data for three lots (total and individually) indicates the coils are within the required ranges. The standard deviations calculated (see images below) will not result in confidence intervals, even at 99%, exceeding 100 PSI.
***e.g., for the total calculate the 99% range as 2.57 * total_summary$SD / sqrt(nrow(total_summary)) = 20.28
![image](https://user-images.githubusercontent.com/69257381/129492150-b440d5da-b2a3-4c37-bceb-4eb6053d4d54.png)
![image](https://user-images.githubusercontent.com/69257381/129492157-b10331ad-76e3-4b39-b2a0-84cf1328fc36.png)

*T-Tests on Suspension Coils
**Given a population mean (mu) of 1500 PSI by the manufacturer we ran a t.test on four (4) different sets of data taken from the provided sample. We used a 95% confidence level and based on the p=value fromm each test made the following conclusion on accepting/rejecting H0: The sample mean is significantly different than the population mean.

![image](https://user-images.githubusercontent.com/69257381/129492197-c5106c86-cb72-4af0-9e55-44461bcdf223.png)

![image](https://user-images.githubusercontent.com/69257381/129492205-4580671c-e14d-4823-ba3a-931c7c8d8152.png)

![image](https://user-images.githubusercontent.com/69257381/129492221-50e7f310-c0b1-4e85-bc92-bcc1765694fe.png)

![image](https://user-images.githubusercontent.com/69257381/129492224-bf981439-7bbc-44b5-b6e4-29374379f7b0.png)

*Study Design: MechaCar vs Competition.
**To provide competitive distinction between the MechaCar and the competition it recommended that a statistical analysis of some key metrics be performed. In particular, a baseline set of metrics including cost, MPG(city/highway), acceleration (0-60 time), and safety ratings will be compared. If required additional, vehicle class metrics such as handling, braking, off-road/AWD, towing, etc can also be included (would request the marketing and design team input). Data collection for most vehicles should be available from the manufacturer, as well as public sources such as "Car and Driver". Finally, if required, private firms can be engaged to perform independent testing (cost is likely a factor here). Once all the metrics are collected for 5-10 competitive vehicles it is suggested an ANOVA analysis be performed to determine: for which metics is the MechaCar substantially different, i.e., statistically significant.

***Metrics to test: cost, MPG(city/highway), acceleration (0-60 time), and safety ratings
***The MechaCar means performance in these metics is not different from its competitors means
***ANOVA is used to test the means of multiple metrics across multiple groups
***Collected from manufacturer published specifications, publicly published test results (e.g., Car and Driver), or custom independent testing (if required).
