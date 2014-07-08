# ui.R
# Bastiaan Quast
# bquast@gmail.com

library(shiny)
shinyUI(pageWithSidebar(
  headerPanel('Illustrating Inputs'),
  sidebarPanel(
    numericInput('id1',
                 'Numeric input, labeled id1',
                 min = 0,
                 max = 10,
                 step = 1
                 ),
    
    checkboxGroupInput('id2',
                       'Checkbox',
                       c('Value 1' = '1',
                         'Value 2' = '2',
                         'Value 3' = '3'
                         ),
    ),
    
    dateInput('date', 'Date:')
    ),
  
  mainPanel(
    h3('Main Panel text')
    )
  )
)