library(shiny)

shinyServer(function(input, output) {
   
  output$pvalue <- renderText({ 
    if (input$type=="lower") {
      p <- pnorm(input$test.stat, lower.tail=TRUE)
      tailed <-"lower-tailed"
    } else if (input$type=="upper") {
      p <- pnorm(input$test.stat, lower.tail=FALSE)
      tailed <- "upper-tailed"
    } else { 
      p <- 2*pnorm(abs(input$test.stat),lower.tail=FALSE)
      tailed <- "two-tailed"
    }
    
    paste("The p-value for a ", tailed, " test with a z-score of ", input$test.stat, " is ", signif(p,digits=3), ".")
  
  })
  
})
