---
title       : A Body Mass Index calculator
subtitle    : data products project summer 2014
author      : Martin Heath
job         : Studen of Computer scienci in Tampere university
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Table of Content

1. What I wanted to do
2. what I did
3. How I did it

--- .class #id 

## What I wanted to do

The shinyapp I decided to make was a very simple BMI(Body Mass Index) calculator.
The user would input their age, weight, height and sex and the app would calculate the BMI and show the results.

So, as inputs, we would have numeric inputs and a set of radio buttons.
As feedback, we would have text, maybe a plot, if I can manage it.

---

## What I did

The program is quite simple. I set up input fields in the side bar for all of the different variables and set them to be at a default of 0.

When the Submit button is pressed, the app calculates the BMI and reacts.

I could not for the life of me make a proper plot, so that had to go.
I also couldn´t find a way to react to the selected sex.

The app can react to age(if someone is under 18) and can react to the different levels of BMI  (underweight to overweight ).

---

## How I did it

The calculations I did with a simple equation, which is just "height divided by Weight squared".

The reactivity to the calculated BMI I did with a cluster of If- else sections, meaning I would check the BMI against set values. 18 or under was clinically underweight, 18.1 to 18.6 was slightly slim and so on and so forth

In total, the whole app was about 40 rows of code.
