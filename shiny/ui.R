# ui.R
# Bastiaan Quast
# bquast@gmail.com

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("censusVis"),
  
  # Sidebar layout
  sidebarLayout(
    
    # Sidebar panel
    sidebarPanel(
      
      # Sidebar text
      helpText( "Create demographic maps with information from the 2010 US Census."),
      
      # Select input
      selectInput("var",
                  label = "Choose a variable to display",
                  choices = list("Percent White",
                                 "Percent Black",
                                 "Percent Hispanic",
                                 "Percent Asian"),
                  selected = 1),
      
      # Slider input for the number of bins
      sliderInput("range",
                  "Range of interest",
                  min = 0,
                  max = 100,
                  value = c(0, 100)
      )
    ),
    
    # Main panel
    mainPanel(
      
      # output of server process
      mainPanel(plotOutput("map"))
      
      )
    
  )
))