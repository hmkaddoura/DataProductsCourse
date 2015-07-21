Calculating Body Mass Index (BMI)
========================================================
author: Haitham Kaddoura
date: July 21, 2015
transition: rotate

Index
========================================================

In this presentation we will go through:

- What is BMI
- How it is Calculated
- Example

What is BMI
========================================================

- BMI stands for Body Mass Index.

- BMI can be used to screen for weight categories that may lead to health problems but it is not diagnostic of the body fatness or health of an individual.


How it is Calculated
========================================================


- Body Mass Index (BMI) is a person's weight in kilograms divided by the square of height in meters. A high BMI can be an indicator of high body fatness. 

- I used the following equation:
<center>
$\frac{weight}{height^2}$
</center>


Example
========================================================

- If a person weights: 100 Kg, and heights: 185cm, then the BMI is calculated as follow (we need to convert centimeters to meters): 

```r
weight <- 100
height <- 185
bmi <- weight *100^2/height^2
bmi
```

```
[1] 29.21841
```

