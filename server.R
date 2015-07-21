
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  calculateBMI <- function(height,weight) weight *100^2/ height^2
  

  bmi <- reactive({as.numeric(calculateBMI(as.numeric(input$height),as.numeric(input$weight)))})
  output$bmis <- renderText({bmi()})
  
  output$bmiText <- renderText({
    input$goButton
  if (bmi()< 18.5) "Underweight"
  else if ( bmi() < 25) "Normal"
  else if ( bmi() < 30) "Overweight"
  else if (bmi() >= 30) "Obese"
  })
  
})
