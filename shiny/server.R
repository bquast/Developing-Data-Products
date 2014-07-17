# server.R
# Bastiaan Quast
# bquast@gmail.com

# load shiny package
library(shiny)

# load other packages
library(maps)
library(mapproj)

# load the R script
source("helpers.R")

# load the data
counties <- readRDS("data/counties.rds")



percent_map(counties$white, "darkgreen", "% white")


# interactive server code
shinyServer(
  function(input, output) {
    
    output$map <- renderPlot({
      
      output$map <- renderPlot({
        data <- switch(input$var, 
                       "Percent White" = counties$white,
                       "Percent Black" = counties$black,
                       "Percent Hispanic" = counties$hispanic,
                       "Percent Asian" = counties$asian)
        
        color <- switch(input$var, 
                        "Percent White" = "darkgreen",
                        "Percent Black" = "black",
                        "Percent Hispanic" = "darkorange",
                        "Percent Asian" = "darkviolet")
        
        legend <- switch(input$var, 
                         "Percent White" = "% White",
                         "Percent Black" = "% Black",
                         "Percent Hispanic" = "% Hispanic",
                         "Percent Asian" = "% Asian")
        
        percent_map(var = data, 
                    color = color, 
                    legend.title = legend, 
                    max = input$range[2], 
                    min = input$range[1])
      })
    })
  }  
  )