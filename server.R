# server.R
# Bastiaan Quast
# bquast@gmail.com

# load shiny package
library(shiny)

# load other packages
library(ggvis)

# load the data
data(mtcars)

# interactive server code
shinyServer(
  function(input, output) {
    
    # A reactive expression wrapper for input$size
    input_size <- reactive(input$size)
    
    mtcars %>% 
      ggvis(~disp, ~mpg, size := input_size) %>%
      layer_points() %>%
      bind_shiny("ggvis", "ggvis_ui")
    
    })