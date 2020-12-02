library(shiny)

shinyServer( 
  function(input, output) {
    output$length <- renderText({as.numeric(input$length)})
    output$breadth <- renderText({as.numeric(input$length)})
    output$area <- renderText({
      # if (input$goButton == 0) "Please enter a number"
      # else if (input$goButton >= 1) numberGuessed(as.numeric(input$guess), number)
      output$area <- renderPrint ({as.numeric(input$length) * as.numeric(input$breadth)})
    })
  }
)
