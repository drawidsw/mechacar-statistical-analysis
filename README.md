# Overview

In this module, statistical analyses are performed using R on given data files, and their summary results are presented here.

# Deliverables

## Linear Regression to Predict MPG

In this deliverable, MPG of cars are predicted based upon several independent variables. There are a total of 50 data points and the data file is available here. The linear regression equation is found as follows:

```
mpg = -104 + 6.27*length + 0.001*weight + 0.069*angle + 3.55*clearance -3.41*AWD

```

The summary statistics are given in the table as below.

| Statistic | Value | Description |
| --------- | ----- | ----------- |
| Residual standard error | 8.774 | 44 degrees of freedom |
| Multiple R-squared | 0.7149 | |
| Adjusted R-squared | 0.6825 | |
| F-statistic | 22.07 | 5 and 44 DF |
| **p-value** | **5.35e-11** | |

From the table, we see that the *p-value* of the regression is lesser than 0.05. This shows that the NULL hypothesis is **rejected**, and the alternative hypothesis is true. Meaning, the slope of the regression is nonzero, and the **mpg of the car is influenced by at least one of the independent variables considered in the analysis.**

To understand which independent variables are important predictors, both the *coefficient* and the *p-value* of the coefficient are considered. The coefficient should be large and the p-value should be small for the independent variable to be important for the model. The table below shows important variables.

| Variable | Coefficient | Standard error | t-statistic | p-value  | Is Important | 
| -------- | ----------- | -------------- | ----------- | ------------------ | ------------ |


From the table above, we see the following variables are good predictors of the **mpg** of the vehicle. In both cases, the coefficient is high, the standard error is low and thus, the p-value is very low.
* **Vehicle Length**
* **Ground Clearance**

Conversely, the following three variables are **not** good predictors of **mpg** and should be dropped from the model.
* **Vehicle Weight**: The coefficient is low. The standard error is low as well, and the t-statistic is 1.807. The p-value is 0.07 - it's just slightly higher than the standard 0.05. This fact, plus the very low coefficient value means including this variable in the regression model is not valuable.
* **Spoiler Angle**: The coefficient is low, and the standard error is comparatively high. The p-value is quite high at 0.3. This variable should be dropped from the model.
* **AWD**: The coefficient is high, but the standard error is high as well, and the p-value is at 0.19, which is much higher than 0.05. This variable is thus not an accurate predictor of **mpg** and should be dropped from the model.



