library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Calculating your body mass index"),
  sidebarPanel(
  #Input from user
    numericInput('id1', 'Please enter your age (years):', 0, min = 0, max = 100, step = 1),
    numericInput('id3', 'Please enter your height (cm):', 0, min = 0, max = 300, step = 1),
    numericInput('id4', 'Please enter your current weight rounded up (kg):', 0, min = 0, step = 1),
    radioButtons("id2","Sex:", c("Male" = "1", 
                                "Female" = "2")),
   #generic submit button
    submitButton('Submit')
    ),
    
  mainPanel(
    h3('Your BMI has been calculated and the result is: '),
    h4('The raw BMI:'),
    verbatimTextOutput("result"),
    verbatimTextOutput("age"),
    h4('Based on your BMI, here is the conclusion:'),
    verbatimTextOutput("conclusion")
  )
  ))
