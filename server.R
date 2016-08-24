#Server function that creates the plots and tables after selecting a city
#The dataset is taken from a public website but has to be downloaded first - i.e., you can't
#scrape it but have to sign in to download and accept the terms of use.

library(shiny)

#Data Preparation
library(stringr)
library(XLConnect)
colsIndex = c(1,5,7,9,11,13,15,17,19,21,23,25,27)
col <- c(rep("character",1),rep("numeric",27))                  
dat <- readWorksheetFromFile("hpi_8-12-2016.xls", 1, colTypes = col)              
datIndex = dat[, colsIndex]
names(datIndex) =  names(dat)[colsIndex]
names(datIndex)[1] = "TransMonthYr"
names(datIndex)[10] = "ON_Ottawa_QC_Gatineau"
datIndex = datIndex[4:dim(datIndex)[1],]
MonthYear = as.Date(paste0("1", str_replace(datIndex[,1], "-", "")), "%d%b%Y")
datIndex = cbind(MonthYear, datIndex)
source("helper.R")

#Create a lookup table to renderUI back to Input page for output on the sidebar or plot/tables generated
#below by server function below and/or before entering server function (as of date for data availability is 
#not dependent on input but when date is downloaded)

#Get as of Date from dataset (datIndex):
AsOfDate = datIndex[dim(datIndex)[1],2]

shinyServer(function(input, output) {
  
  # You can access the values of the widget (as a vector)
  # with input$radio, e.g.
  output$value <- renderPrint({ input$radio })
  output$value1 <- renderPrint({ HTML(paste("<b>",paste("House Price Data As Of ", AsOfDate),"</b>")) })
  
  # Get Dataset matching selected city: Create a Plot - Growth of Index; Render Plot and Data
  data = reactive({datIndex[!datIndex[,as.numeric(input$radio)+2]==0,c(1:2,as.numeric(input$radio)+2)]})
  output$value2 = renderPrint({data()})
  x = reactive({datIndex[!datIndex[,as.numeric(input$radio)+2]==0, 1]})
  y = reactive({datIndex[!datIndex[,as.numeric(input$radio)+2]==0, as.numeric(input$radio)+2]})
  output$Plot1 = renderPlot({plot(x(), y(), main = "Index vs Time", type= 'l', xlab = "Time (in Months)", 
       ylab = "Index (2005 = 100)", col = 'red', lwd=6)})
  
  # Use Dataset again to calculate annualized growth rates in the city indices over periods:
  # 1 year, 2 year, 3 year, 4 year, 5 year, 6 year, 7 year, 8 year, 9 year, 10 year, 11 year, 
  # 12 year, 13 year, 14 year, 15 year.
  data1 = reactive({RatesGrowth(data())})
  output$value3 = renderPrint({data1()})
  
  x1 = reactive({TimeVector(data())})
  #output$value4 = renderPrint({x1()})
  y1 = reactive({GrowthVector(data())})
  #output$value5 = renderPrint({y1()})
  output$Plot2 = renderPlot({plot(x1(), y1(), main = "Annualized Growth Rates (%) vs Time (Yrs)", type = 'p',
                                  xlab='Number of Years', ylab = 'Annualized Growth Rate (%)', 
                                  col ='blue', lwd = 6, pch = 19)})
  
  #Getting the City Selected for OUtput
  x2 = reactive({city(input$radio)})
  output$value4 = renderPrint({ HTML(paste("<b>",paste("You selected the following city = ", x2()),"</b>")) })
  
 })