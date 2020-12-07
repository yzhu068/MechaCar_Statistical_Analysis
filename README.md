# MechaCar_Statistical_Analysis
Module 15

## Background
Jeremy is using R and statistics knowledge to help AutosRUs about a speacial project.  AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.


## Analysis
### Diliverable 1 Multiple Linear Regression 
THe summary table shown as below: 

(Intercept)    vehicle_length    vehicle_weight  
      -1.040e+02         6.267e+00         1.245e-03  
   spoiler_angle  ground_clearance               AWD  
       6.877e-02         3.546e+00        -3.411e+00  

Residuals:
     Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

Based on Pr(>|t|) indicated, vehicle weight, spoiler angle and AWD provided a non-random amount og variance to the MPG values. 

the slope of the multiple linear regression is not considered to be 0. It involves multiple factors, the slope of the regression should be a vector and cannot be considered as 0. 

The modeling provides a good prediction of mpg. THe Pr (>|t|) value for intercept is minimal which means all factors has been considered. 

### Diliverable 2 Total and Lot Summary against PSI
The total and lot summary tables are shown in blow: 

Total Summary:	
Mean_PSI			1498.78
Median_PSI			1500
Variance			62.29356
Standard_DV			7.892627

Lot Summary:
 

By looking into the total summary and lot summary table, the design specification for the mechacar variance suspension coils 
must not exceed 100 pounds per square inch has not been met. Lot 1 and Lot2 vehichle has met the specs, but not for lot 3. Lot 3 has a variation of 170, which is higher than the specs. request. 


### T-Test on Suspension Coils
The results are shown below: 
TOTAL 
One Sample t-test
data:  log10(D2_table$PSI)
t = -1.9155, df = 149, p-value= 0.05734
alternative hypothesis: true mean is not equal to 3.176091
95 percent confidence interval:3.175361 3.176103
sample estimates:mean of x 3.175732 

Lot 1 Summary: 
One Sample t-test

data:  log10(subset(D2_table, Manufacturing_Lot == "Lot1", select = (PSI)))
t = -0.0022862, df = 49, p-value = 0.9982
alternative hypothesis: true mean is not equal to 3.176091
95 percent confidence interval:
 3.176010 3.176173
sample estimates:
mean of x 
 3.176091 

Lot 2 Summary: 
One Sample t-test

data:  log10(subset(D2_table, Manufacturing_Lot == "Lot2", select = (PSI)))
t = 0.51117, df = 49, p-value = 0.6115
alternative hypothesis: true mean is not equal to 3.176091
95 percent confidence interval:
 3.175924 3.176373
sample estimates:
mean of x 
 3.176148 

Lot 3 Summary: 
One Sample t-test

data:  log10(subset(D2_table, Manufacturing_Lot == "Lot3", select = (PSI)))
t = -2.1137, df = 49, p-value = 0.03966
alternative hypothesis: true mean is not equal to 3.176091
95 percent confidence interval:
 3.173877 3.176035
sample estimates:
mean of x 
 3.174956 










