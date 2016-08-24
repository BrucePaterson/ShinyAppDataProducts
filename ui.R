library(shiny)
library(markdown)
shinyUI(fluidPage(
  sidebarLayout(
                sidebarPanel(radioButtons("radio", label = h3("Select a City"),
                choices = list("Composite 11 Cities" = 1, "Victoria" = 2, "Vancouver" = 3,
                              "Calgary" = 4,  "Edmonton" = 5, "Winnipeg" = 6,
                              "Hamilton" = 7, "Toronto" = 8,  "Ottawa" = 9,
                              "Montreal" = 10, "Quebec City" = 11, "Halifax" = 12), selected = 1),
                               htmlOutput("value1"),
                               htmlOutput("value4")
                            ),
                mainPanel(
                  tabsetPanel(
                  tabPanel("Historical Growth",wellPanel(h3("City Index"), plotOutput("Plot1")), 
                           wellPanel(h3("City Index Data"), verbatimTextOutput("value2"))
                           ),
                  tabPanel("Growth Rates", wellPanel(h3("Growth Rate vs Time"), plotOutput("Plot2")),
                           wellPanel(h3("Annualized Rates of Growth"), verbatimTextOutput("value3"))
                           ),
                  tabPanel("About", includeMarkdown("include.md"))
                  )
                  ),
                )
))
