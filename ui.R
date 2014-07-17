# ui.R
# Bastiaan Quast
# bquast@gmail.com

library(shiny)
library(ggvis)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("censusVis"),
  
  # Sidebar layout
  sidebarLayout(
    
    # Sidebar panel
    sidebarPanel(
      sliderInput("size", "Area", 10, 1000, value = 1000)
    ),
    
    # Main panel
    mainPanel(
      uiOutput("ggvis_ui"),
      ggvisOutput("ggvis")
    )
  ))
)