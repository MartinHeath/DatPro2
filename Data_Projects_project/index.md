---
title       : A Body Mass Index calculator
subtitle    : data products project summer 2014
author      : Martin Heath
job         : Studen of Computer science in Tampere university
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Table of Content

1. Basic idea of application
2. How to use it
3. How it was made

--- .class #id 

## Basic Idea of Application

The shinyapp I decided to make was a very simple BMI(Body Mass Index) calculator.
The user would input their age, weight, height and sex and the app would calculate the BMI and show the results.

The program would react to certain elements, like age and sex. The application would also give the user a classification od their BMI, ranging from underweight to overweight, accroding to the general limits.

---

## How to use it

The program is quite simple. On the sidebar of the page, there are three numeric input boxes and a pair or radio buttons. The numeric boxes represent age, height and weight respectively. The radio buttons represent sex.

This data is filled and then submitted via a Submit - button.

The data is calculated and the user is given his/her BMI, a notification if needed and a classification of her/his BMI.

Very easy, very simple.

---

## How it was made

The application was very simple, befitting a first-time shiny application. The data is collected from the user input and calculated using the basic BMI formula, which is

Height * (weight squared)

This gives us the raw version.

After this, the application checks if the user is 18 or younger and notifies, that the BMI is not accurate at this age.

Finally, using a simple set of if - else statements, the BMI is classified and the user is given simple feedback.

---
