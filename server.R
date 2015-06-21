
library(shiny)

payment <- function(amount, rate, years, options ){
  monthly_rate <- rate/1200
  months <- as.numeric(years) * 12
  
  if (length(options) == 1){
    amount * monthly_rate 
  }
  else {
    amount * (monthly_rate * (1 + monthly_rate)^months /((1+monthly_rate)^months -1  )   )
  }
} 


shinyServer(
  function(input, output) {
    output$o_rate <- renderPrint({input$rate})
    output$o_amount <- renderPrint({input$amount})
    output$o_years <- renderPrint({input$years})
    output$o_options <- renderPrint({input$options})    
    output$o_payments <- renderPrint({payment(input$amount,input$rate, input$years, input$options   ) })    
    

    
  }
)