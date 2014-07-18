# server.R
# Bastiaan Quast
# bquast@gmail.com

# load shiny package
library(shiny)

# load other packages
library(ggvis)

# load the data
data(mtcars)
load('child.subset.RData')

# interactive server code
shinyServer(
  function(input, output) {
    
    # A reactive expression wrapper for input$size
    input_size <- reactive(input$size)
    input_span <- reactive(input$span)
    input_opacity <- reactive(input$opacity)
    
    iris %>%
      ggvis(~Sepal.Length, ~Sepal.Width) %>%
      group_by(Species) %>%
      layer_points(size := input_size, opacity := input_opacity, fill = ~Species) %>%
      layer_smooths(span = input_span, fill = ~Species, se=TRUE) %>%
      bind_shiny("ggvis", "ggvis_ui")
    
    })