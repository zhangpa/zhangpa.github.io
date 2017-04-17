library(shiny)

shinyUI(fluidPage(
  titlePanel("p-value Calculator"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("test.stat", 
                  label = "z-score:",
                  value = 0.00, step = 0.01),
      selectInput("type", 
                  label = "Type of test:", 
                  choices = list("Two-tailed" = "two", "Lower-tailed" = "lower",
                                 "Upper-tailed" = "upper"), selected = "two")
      ),
    
    mainPanel(
      h4(textOutput("pvalue")))
  )
))