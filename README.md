# MechaCar Statistical Analysis
## Linear Regression to Predict MPG
### MPG = 6.27 * Vehicle Length + 0.0001 * Vehicle Weight + 0.007 * Spoiler Angle + 3.55 * Ground Clearance - 3.41 * AWD - 104
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? </br>
Vehicle length, ground clearance, and AWD provided a non-random amount of variance to the mpg values with the coefficients of 6.27, 3.55 and -3.41, respectively. </br>
- Is the slope of the linear model considered to be zero? Why or why not? </br>
The p-value is 5.35e-11, making it significantly smaller than the assumed significance level of 0.05.This means that there are sufficient evidence to reject the null hypothesis,indicating that the chances of having a slope of zero is extremely small.</br>
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? </br>
The r-squared of this model is 0.715, meaning that around 71.5% of all data can be predicted by this model, with the remaining 28.5% due to random chance. This shows that this linear model is relatively efficient. </br>
<img width="1039" alt="Screen Shot 2022-06-05 at 7 35 26 PM" src="https://user-images.githubusercontent.com/98621924/172049415-9a8c6ab0-3647-4a38-8860-b1f9c7ec7b12.png"> </br>
<img width="672" alt="Screen Shot 2022-06-05 at 7 35 38 PM" src="https://user-images.githubusercontent.com/98621924/172049417-e1771ce5-d338-4b55-af0e-6c3399449bb4.png"> </br>

## Summary Statistics on Suspension Coils
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not? </br>
The total summary at the bottom shows that the variance of suspension coils is around 62.3 pounds per square inch, under the 100 pounds limit. </br>
However, when looking at each manufacturing lot separately, we can identify that the variance of lot 3's suspension coil exceeds the limit of 100lbs at 170 lbs PSI. Manufacturing Lot 1 and Lot 2 both meets the standard at 0.98 and 7.47 lbs per square inch. </br>
<img width="500" alt="Screen Shot 2022-06-05 at 9 32 20 PM" src="https://user-images.githubusercontent.com/98621924/172053191-7f67aeb9-cd65-42d9-82d3-7c66f8c1487c.png"> </br>

## T-Tests on Suspension Coils
The mean of all the suspensiontcoils' pounds per square feet is 1498.78, with a 95% confident interval between 1497.5 and 1500.1. The p-value if 0.06, exceeding the 0.05 threshhold of significance level, making the test insufficient to reject the null hypothesis.</br>
<img width="516" alt="Screen Shot 2022-06-05 at 9 36 57 PM" src="https://user-images.githubusercontent.com/98621924/172053408-f3adbef0-3547-4dfe-b37e-2361c24ad026.png"> </br><img width="510" alt="Screen Shot 2022-06-05 at 9 37 24 PM" src="https://user-images.githubusercontent.com/98621924/172053562-f8c5e34d-3140-4292-8fdb-984a15ea309f.png"> </br>
Next, we broke down the data in to subsets, based on their manufacutring lots. </br>
<img width="510" alt="Screen Shot 2022-06-05 at 9 37 24 PM" src="https://user-images.githubusercontent.com/98621924/172053877-fc7effb2-2b72-4cc4-9dbd-dc517c69be30.png"></br>
The first lot's mean PSI is 1500, the same as the proposed population mean. With a p-value of 1, we clearly cannot reject the null hypothesis, which states that the true mean equals to 1500.</br>
<img width="521" alt="Screen Shot 2022-06-05 at 9 37 06 PM" src="https://user-images.githubusercontent.com/98621924/172053579-daec269b-23d3-4f16-8406-76d1d4cc0fa9.png"></br>
Lot 2's mean PSI is 0.2 higher than the population mean at 1500.2 and a p-value of 0.61. Signifcantly higher than the significance level of 0.05, we cannot reject the null hypothesis. The statistical difference between the lot 2 mean and the population mean is also negligible. </br>
<img width="515" alt="Screen Shot 2022-06-05 at 9 37 11 PM" src="https://user-images.githubusercontent.com/98621924/172053892-35fce189-5338-4e71-a2f7-86db253299f3.png"></br>
Lot 3's mean PSI of 1496.14 and p-value of 0.042. We have sufficient evidence to reject the null hypothesis as the p-value is lower than the 0.05 significance level of 0.05, meaning that the true mean of lot 3 does not equal to the mean. </br>
<img width="503" alt="Screen Shot 2022-06-05 at 9 37 17 PM" src="https://user-images.githubusercontent.com/98621924/172053995-418fb011-c1c0-4d00-ab12-a6d00bf92cd4.png"> </br>

## Study Design: MechaCar vs Competition
### Metrics
Data Source: Competitor and MechaCar</br> 
Data that needs to be collected: </br>
- Present Cost</br>
- MPG or </br>
- Power Source (Petroleum, EV, biodiesel, or hydrogen)</br>
- Annual estimated maintenance cost</br>
- Safety Rating</br>
- Carbon Footprint (tco2e)</br>

### Hypothesis
- Null: There are no statistical differences between the annual carbon footprint of MechaCar and its competitor's manufactured vehicles.</br>
- Alternative: There are statistical difference between the annual carbon footprint of MechaCar and its competitor's manufactured vehicles.</br>

###Statistical Test
Paired T-tests, and multi linear regression with carbon footprint in metric tonnes of carbon dioxide polluants equivalent per year as the dependent variable.




