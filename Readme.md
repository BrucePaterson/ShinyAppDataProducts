Shiny App - House Price Index Analysis (11 Canadian Cities)  
===========================================================

## Data
Source of the data from: [Teranet - National Bank National Composite House Price Index](http://www.housepriceindex.ca/default.aspx)

## Shiny Application
The application allows the user to select a city (including the composite) from input list (see sidebar):

* The sidebar after radio buttons also gives the date the data ends - the last month available and the city selected (reactive to changes)

* The radio button list follows from west coast to east coast of Canada (Victoria BC to Halifax NS)
* The sidebar after radio buttons also gives the date the data ends - the last month available and the city selected (reactive to changes)
* Link to shiny app is [HERE](https://brucepaterson.shinyapps.io/App_-_Copy/)
* The app contains 3 tabs: 1. Historical Growth (displays selected city's indices over time with a plot of the data); 2. Growth Rates (calculates annualized growth rates and a plot of the rates); 3. About (explains how to use the app)


The About tab is the `include.md` file in the repository which explains the tabs, analysis and how to use the shiny app.

## [GitHub link](https://github.com/BrucePaterson/ShinyAppDataProducts) to ui.R and server.R files

* The server.R file made use of the helper.R file containing R functions enabling the conversion and calculation of results and variables that could then be used to create the shiny app and Rpres slides.

* The Data is the excel file hpi_8-12-2016.xls the tabs and analysis

* A Rpres presentation slides were created and put on RPubs [RPubs Link Here](http://rpubs.com/BrucePaterson/204074)



