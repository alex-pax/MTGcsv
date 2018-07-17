#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("MTG Sealed Draft Tool"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      fileInput("draft", "Upload Draft.csv"),
      sliderInput("num.colors",
                  "Number of colors:",
                  min = 1,
                  max = 5,
                  value = 2),
      sliderInput("num.land",
                  "Number of Lands:",
                  min = 1,
                  max = 40,
                  value = 17)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      dataTableOutput("decklist"),
      plotOutput("distPlot")
    )
  )
))