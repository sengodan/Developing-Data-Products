---
title       : Slidify
subtitle    : Mortgage Calculator
author      : Raj Sengodan
job         : Student, Johns Hopkins Bloomberg School of Public Health
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---
framework   : io2012   # {io2012, html5slides, shower, dzslides, ...}

## Mortgage Calculator


This application calculates the fixed monthly payment required to fully amortize a loan  dollars over a term of mortgage years at a yearly interest rate. 

Required the following to be inputed

1. Mortgage Amount
2. Mortgage duration in years
3. Annual Interst Rate
4. Option for Interst only

Here is the link for running the [application] (https://sengodan.shinyapps.io/Developing-Data-Products) 

---

## Mortgage Calculator Formula

The following formula used for calcualting the monthly payment


```r
 amount * (monthly_rate * (1 + monthly_rate)^months /((1+monthly_rate)^months -1  )   )
```

---
## Mortgage Calculator Formula - Interest Only option

The following formula used for calcualting the monthly payment for intest only option


```r
 amount * monthly_rate 
```

---

## Mortgage Calculator - Assumptions

* Assumed fix rate interst rate to fully amortize the loan amount. 
* For Interest only option, no amortize
* The principles remains the same for the Interest only option

---
