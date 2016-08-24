House Price Index Analysis (11 Canadian Cities)  
===============================================

This Shiny Application is created from a database created by: [Teranet - National Bank National Composite House Price Index](http://www.housepriceindex.ca/default.aspx)

## Data
* This database is public and update monthly form the link above you can visit the site
* The site contains 11 major Canadian cities across the country and a Composite of the 11 as well
* The database must be downloaded and cannot be scraped from the site directly (you must provide)
  an email address and check off an agreement as to usage of data - it is very restrictive.
* The excel file contains price indices for each city where 2005 is the base year as well as number of units
  sold/resold during each month of the history
* The methodology for creating the indices is described on the website - it uses the monthly prices of residential houses that have sold in their respective markets that particular month:  inclusion in the database occurs only for residential properties and only if they have been sold at least twice before.  The composite of the 11 cities is created through a weighting process described in the methodology section of the website referenced at the beginning.
* This application uses only the price indices for each of the 11 cities and the composite (12 in total)

## Shiny Application
The application allows the user to select a city (including the composite) from input list (see sidebar):

* The cities start with the Composite 11 (all cities weighted combined) - proxy for country wide price appreciation
* The radio button list follows from west coast to east coast of Canada (Victoria BC to Halifax NS)
* The sidebar after radio buttons also gives the date the data ends - the last month available and the city selected (reactive to changes)

### Historical Growth
This tab shows plot of the city house price index over time - monthly starting from first month of collection
to the latest months' index - in this case July 2016 data.
Also the data used to create plot is shown as well.
User can change the city and see the changes in the plot/chart and the data - each city didn't have the same starting month but all have at least 17+years to the current month and of course will build over time.  The longest dataset for any city is currently 26 years.  You can observe changes in the indices/price appreciation over the individual city's history and compare with different cities.  Changes in the slope of the chart will give you indications of changes in price appreciation over time.

### Growth Rates
This tab shows how you can use the price indices to calculate the annualized growth rates:  

* The tabe shows the table created by calcuating growth rates from 1 year to 15 year in increments of a year, i.e. 15 growth rates plus the growth rate for all years available in the particular city's price data (even
if they are partial years for example 17.3 years) 
* There is a plot of the growth rates above the table - you can observe the change in compound rates over time to observe the growth rate differences between regions of the country and well over different episodes of time.  
* For those interested in particular city they can estimate the increase in prices say 5 years ago to today by taking the 5 year annualized growth rate from table and compounding it - to estimate the price appreciation over this time period.  For example: Toronto 5 yr rate is 8.12% or 1.08116^5 = 1.477235 increase in price since July 2011 (exactly 5 years ago) to July 2016.  Similarly you could go to the Historical Growth tab and extract the Jul 2011 index = 134.86 and the current level July 2016 index 199.22 - 199.22/134.86 = 1.477235.  (There might be differences due to rounding in the rate.)
* So one could estimate the price appreciation in their city and residential house price assuming they are appreciating at the market rate for that city.  One could apply departures from that assumption say 5% per annum more than or less than the market by applying the rate difference to the compound market rate and time period of interest - for example a 5% increase over the market rate above implies the growth rate at time period of interest 5 years should be 8.116% + 5% = 13.116% for 5 years or 1.8519.  This indicates the house price has appeciated 85.2% over the 5 years versus the market price appreciation of 47.7%.
