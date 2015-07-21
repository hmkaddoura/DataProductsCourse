
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(pageWithSidebar(

  # Application title
  headerPanel("Calculate your BMI"),

  # Sidebar with a slider input for number of bins
  sidebarPanel(
    h1('Your input'),
    numericInput('height', 'Height in Centimeter', 150, min = 10, max = 250, step = 1),
    numericInput('weight', 'Weight in Kilograms', 50, min = 0, max = 250, step = 1),
    actionButton("goButton", "Submit"),
    h5('Hints'),
    h6('1. You need to input your height in centimeters
       2. You need to input your weight in kilograms
       3. The application will calculate you body mass index and will show you both numerica and text results')
      
  ),

  # Show a plot of the generated distribution
  mainPanel(
    h1('Results'),
    h4("Calculate BMI is:"),
    verbatimTextOutput("bmis"),
    h4("Results in text is:"),
    verbatimTextOutput("bmiText")
  )
  
))
