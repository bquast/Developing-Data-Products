# ui.R
# Bastiaan Quast
# bquast@gmail.com

library(shiny)
library(ggvis)



  

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Iris"),
  
  # Sidebar layout
  sidebarLayout(
    
    # Sidebar panel
    sidebarPanel(
      sliderInput("size", "Area", 10, 1000, value = 100),
      sliderInput('span', "Span", 0.5, 1, value = 0.75),
      sliderInput('opacity', "Point Opacity", 0, 1, value = 0.5)
    ),
    
    # Main panel
    mainPanel(
      uiOutput("ggvis_ui"),
      ggvisOutput("ggvis")
    )
  ))
)