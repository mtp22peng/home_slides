library(shiny)
shinyUI(fluidPage(
#shinyUI(pageWithSidebar(
  headerPanel("An interactive plot of child height"),
  sidebarPanel(

    div("Please slide to the guessed mean value of the height:", style = "color:blue"),
    br(),
    br(),
    sliderInput('mu', 'Guess at the mean',value = 70, min = 62, max = 74, step = 0.05,)
  ),
  mainPanel(

    div("Show the histogram with guessed mean value and the computed MSE:", style =  "color:blue"),
    br(),
    plotOutput('newHist')
  )
))
