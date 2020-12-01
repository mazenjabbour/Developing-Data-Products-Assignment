library(shiny)
shinyUI(fluidPage(
  titlePanel("Scatter Plot"),
  sidebarLayout(
    sidebarPanel(
      numericInput("numeric", "Number of points", 
                   value = 5000, min = 1, max = 5000, step = 1),
      sliderInput("sliderX", "Select X range",
                  -500, 500, value = c(-50, 50)),
      sliderInput("sliderY", "select y range",
                  -500, 500, value = c(-50, 50)),
      checkboxInput("show_xlab", "Show/Hide X Axis Label", value = TRUE),
      checkboxInput("show_ylab", "Show/Hide Y Axis Label", value = TRUE),
      checkboxInput("show_title", "Show/Hide Title")
    ),
    mainPanel(
      h3("Enjoy the graph"),
      plotOutput("plot1")
    )
  )
))
