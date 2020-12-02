library(shiny)

shinyUI( pageWithSidebar(
    headerPanel("Rectangle Area Calculation"),
    
    sidebarPanel(
        textInput (inputId = 'length', 'Enter Length', value = '0'),
        textInput (inputId = 'breadth', 'Enter Width', value = '0')
    ), 
    mainPanel(
        h4('The Area of your rectangle is'),
        verbatimTextOutput("area")
    )
)
)

