
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)


shinyUI(fluidPage(
  titlePanel("Application to Predict Son's Height from Father's Height"),
  
  sidebarLayout(
    sidebarPanel( "",
                  h4("Model"),
                  p("This application uses linear regression to predict son's height using 1078 obesrvations in father.son dataset in UsingR package."),
                  br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),
                  h4("Input"),
                  numericInput("fathersHeight", label = h6("Enter Father's Height in Inches"), value = 72)
    ),
    mainPanel("",
              plotOutput("regPlot"),
              p("The plot represents the obesrvations in father.son dataset and the red line represents the regression line for linear models used to make predictions for entered Father's Height. "),
              h4("Output"),
              h6(textOutput("sonsHeight"))
    )
  )
  
))
