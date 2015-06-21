library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Mortgage Calculator"),
  
  sidebarPanel(
    helpText("This application calculates the monthly payment for a mortage based on the
    mortgage loan amount, mortgage duration, interest rate and Interest only option..."),  
    
    numericInput('amount', 'Enter Mortgage Amount ($)', 100000, min = 20000, max = 1000000, step = 5000),
    selectInput("years", "Choose Mortgage Years", 
                choices = c("5", "10", "15", "20", "25", "30")),
    
    sliderInput('rate', 'Choose Interest Rate (%)',value = 4.0, min = 1.00, max = 10.00, step = 0.05,),
  
    checkboxGroupInput("options", "Options",
                       c("Interst Only" = "Interst Only" )),
    helpText("Note: Assumed fix rate interst rate to fully amortize the loan amount. 
             For Interest only option, no amortize")    
    
  ),
  mainPanel(
    h3('Mortgage Data...'),
    h4('Amount in $'),
    verbatimTextOutput("o_amount"),
    h4('Mortgage Duration in Years'),
    verbatimTextOutput("o_years"),
    h4('Interst Rate in %'),
    verbatimTextOutput("o_rate"), 
    h4('Options'),
    verbatimTextOutput("o_options"),
    h4('Monthly Payment in $'),
    verbatimTextOutput("o_payments")
    
    
  )
))