# Quiz 1
# Bastiaan Quast

# Question 1
library(manipulate)
myPlot <- function(s) {
  plot(cars$dist - mean(cars$dist), cars$speed - mean(cars$speed))
  abline(0, s)
}
myPlot(5)
manipulate(myPlot(s), s = slider(0, 2, step = 0.1))

# Question 2
library(rCharts)
data(airquality)
dTable(airquality, sPaginationType = "full_numbers")