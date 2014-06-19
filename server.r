library(shiny)
shinyServer(
  function (input, output){
    under <- 18
    good <- 18.6
    over <- 25
    obes <- 30
    BMI <- reactive({as.integer(input$id4) / as.integer(input$id3 * input$id3)* 10000})
    helper = BMI
    output$result <- renderText({
      if(input$id1 != 0)BMI()
    })
    output$age <- renderText({
      if(as.integer(input$id1) < 18 & as.integer(input$id1) > 0) "Please note that the BMI can be innacurate for people in their teens."
    })
    
    output$conclusion <- renderText({
      if((as.integer(input$id4) / as.integer(input$id3 * input$id3)* 10000) < 18) "You may be clinically underweight. Please consider contacting a medical professional. Being underweight can be very dangerous."
      else if((as.integer(input$id4) / as.integer(input$id3 * input$id3)* 10000) > 18 & (as.integer(input$id4) / as.integer(input$id3 * input$id3)* 10000) <= 18.6) "You might be slightly underweight. Please consider changing your diet and excercise routines accordingly. /n Being Slightly underweight is nothing to worry about though, as long as it doesn´t become worse"
      else if((as.integer(input$id4) / as.integer(input$id3 * input$id3)* 10000) > 18.6 &(as.integer(input$id4) / as.integer(input$id3 * input$id3)* 10000) <= 25) "Your body is healthy, at least weightwise. Congratulations! Keep taking care of your body."
      else if((as.integer(input$id4) / as.integer(input$id3 * input$id3)* 10000) < 25 & (as.integer(input$id4) / as.integer(input$id3 * input$id3)* 10000) < 30) "You may be slightly overweight. Please consider altering your diet and excerice routines accordingly. Slight overweight is nothing serious, but if you are getting close to the limit of 30, blood clotas and other nasty inflictions have a much higher chance of affecting you."
      else if((as.integer(input$id4) / as.integer(input$id3 * input$id3)* 10000) > 30) "You may be clinically overweight. Please consider contacting a medical professional."
    })
  })