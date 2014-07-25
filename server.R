
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
require(UsingR)
fit<-lm(sheight ~ fheight, data=father.son)

shinyServer(function(input, output) {
  
  output$regPlot <- renderPlot({
    plot(father.son$fheight,father.son$sheight,xlab="Father's Height in Inches", ylab="Son's Height in Inches")
    abline(fit,col=2,lty=1)
  })
  

  output$sonsHeight <-renderText({
    paste("Predicted Son's Height in Inches = ",
    round(predict(fit,data.frame(fheight=input$fathersHeight)),2))})
})