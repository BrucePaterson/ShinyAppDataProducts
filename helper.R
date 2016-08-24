## Function calculates the annualized growth rates for any index of values
## in this case it is house price indices in 11 cities in Canada or the composite
## of all 11 cities (proxy for national index)

RatesGrowth = function(x){

Endpoint = x[dim(x)[1],]
Beginpoint = x[1,]
RatioAll = Endpoint[3]/Beginpoint[3]
timeALL = (dim(x)[1]-1)/12
rateALL = 100*(exp(log(RatioAll)/timeALL)-1)

BeginLastYr = x[dim(x)[1]-12,]
RatioLastYr = Endpoint[3]/BeginLastYr[3]
rateLastYr = 100*(exp(log(RatioLastYr)/1)-1)

BeginLast2Yr = x[dim(x)[1]-24,]
RatioLast2Yr = Endpoint[3]/BeginLast2Yr[3]
rateLast2Yr = 100*(exp(log(RatioLast2Yr)/2)-1)

BeginLast3Yr = x[dim(x)[1]-36,]
RatioLast3Yr = Endpoint[3]/BeginLast3Yr[3]
rateLast3Yr = 100*(exp(log(RatioLast3Yr)/3)-1)

BeginLast4Yr = x[dim(x)[1]-48,]
RatioLast4Yr = Endpoint[3]/BeginLast4Yr[3]
rateLast4Yr = 100*(exp(log(RatioLast4Yr)/4)-1)

BeginLast5Yr = x[dim(x)[1]-60,]
RatioLast5Yr = Endpoint[3]/BeginLast5Yr[3]
rateLast5Yr = 100*(exp(log(RatioLast5Yr)/5)-1)

BeginLast6Yr = x[dim(x)[1]-72,]
RatioLast6Yr = Endpoint[3]/BeginLast6Yr[3]
rateLast6Yr = 100*(exp(log(RatioLast6Yr)/6)-1)

BeginLast7Yr = x[dim(x)[1]-84,]
RatioLast7Yr = Endpoint[3]/BeginLast7Yr[3]
rateLast7Yr = 100*(exp(log(RatioLast7Yr)/7)-1)

BeginLast8Yr = x[dim(x)[1]-96,]
RatioLast8Yr = Endpoint[3]/BeginLast8Yr[3]
rateLast8Yr = 100*(exp(log(RatioLast8Yr)/8)-1)

BeginLast9Yr = x[dim(x)[1]-108,]
RatioLast9Yr = Endpoint[3]/BeginLast9Yr[3]
rateLast9Yr = 100*(exp(log(RatioLast9Yr)/9)-1)

BeginLast10Yr = x[dim(x)[1]-120,]
RatioLast10Yr = Endpoint[3]/BeginLast10Yr[3]
rateLast10Yr = 100*(exp(log(RatioLast10Yr)/10)-1)

BeginLast11Yr = x[dim(x)[1]-132,]
RatioLast11Yr = Endpoint[3]/BeginLast11Yr[3]
rateLast11Yr = 100*(exp(log(RatioLast11Yr)/11)-1)

BeginLast12Yr = x[dim(x)[1]-144,]
RatioLast12Yr = Endpoint[3]/BeginLast12Yr[3]
rateLast12Yr = 100*(exp(log(RatioLast12Yr)/12)-1)

BeginLast13Yr = x[dim(x)[1]-156,]
RatioLast13Yr = Endpoint[3]/BeginLast13Yr[3]
rateLast13Yr = 100*(exp(log(RatioLast13Yr)/13)-1)

BeginLast14Yr = x[dim(x)[1]-168,]
RatioLast14Yr = Endpoint[3]/BeginLast14Yr[3]
rateLast14Yr = 100*(exp(log(RatioLast14Yr)/14)-1)

BeginLast15Yr = x[dim(x)[1]-180,]
RatioLast15Yr = Endpoint[3]/BeginLast15Yr[3]
rateLast15Yr = 100*(exp(log(RatioLast15Yr)/15)-1)

Annual_Rate_Percent = round(as.numeric(c(rateLastYr, rateLast2Yr, rateLast3Yr, rateLast4Yr,
                      rateLast5Yr,rateLast6Yr,rateLast7Yr,rateLast8Yr,rateLast9Yr,rateLast10Yr,
                      rateLast11Yr,rateLast12Yr,rateLast13Yr,rateLast14Yr,rateLast15Yr,rateALL)),3)
Time_Yrs = round(c(1:15,timeALL),1)
Rate = cbind(Time_Yrs, Annual_Rate_Percent)
## Returns 1:15 and ALL available data annualzed rates of growth in a selected city
return(Rate)
}

#Function same as RateGrowth above but only returns the time vector of where growth rates calculated
TimeVector = function(x){
  
  Endpoint = x[dim(x)[1],]
  Beginpoint = x[1,]
  RatioAll = Endpoint[3]/Beginpoint[3]
  timeALL = (dim(x)[1]-1)/12
  rateALL = 100*(exp(log(RatioAll)/timeALL)-1)
  
  BeginLastYr = x[dim(x)[1]-12,]
  RatioLastYr = Endpoint[3]/BeginLastYr[3]
  rateLastYr = 100*(exp(log(RatioLastYr)/1)-1)
  
  BeginLast2Yr = x[dim(x)[1]-24,]
  RatioLast2Yr = Endpoint[3]/BeginLast2Yr[3]
  rateLast2Yr = 100*(exp(log(RatioLast2Yr)/2)-1)
  
  BeginLast3Yr = x[dim(x)[1]-36,]
  RatioLast3Yr = Endpoint[3]/BeginLast3Yr[3]
  rateLast3Yr = 100*(exp(log(RatioLast3Yr)/3)-1)
  
  BeginLast4Yr = x[dim(x)[1]-48,]
  RatioLast4Yr = Endpoint[3]/BeginLast4Yr[3]
  rateLast4Yr = 100*(exp(log(RatioLast4Yr)/4)-1)
  
  BeginLast5Yr = x[dim(x)[1]-60,]
  RatioLast5Yr = Endpoint[3]/BeginLast5Yr[3]
  rateLast5Yr = 100*(exp(log(RatioLast5Yr)/5)-1)
  
  BeginLast6Yr = x[dim(x)[1]-72,]
  RatioLast6Yr = Endpoint[3]/BeginLast6Yr[3]
  rateLast6Yr = 100*(exp(log(RatioLast6Yr)/6)-1)
  
  BeginLast7Yr = x[dim(x)[1]-84,]
  RatioLast7Yr = Endpoint[3]/BeginLast7Yr[3]
  rateLast7Yr = 100*(exp(log(RatioLast7Yr)/7)-1)
  
  BeginLast8Yr = x[dim(x)[1]-96,]
  RatioLast8Yr = Endpoint[3]/BeginLast8Yr[3]
  rateLast8Yr = 100*(exp(log(RatioLast8Yr)/8)-1)
  
  BeginLast9Yr = x[dim(x)[1]-108,]
  RatioLast9Yr = Endpoint[3]/BeginLast9Yr[3]
  rateLast9Yr = 100*(exp(log(RatioLast9Yr)/9)-1)
  
  BeginLast10Yr = x[dim(x)[1]-120,]
  RatioLast10Yr = Endpoint[3]/BeginLast10Yr[3]
  rateLast10Yr = 100*(exp(log(RatioLast10Yr)/10)-1)
  
  BeginLast11Yr = x[dim(x)[1]-132,]
  RatioLast11Yr = Endpoint[3]/BeginLast11Yr[3]
  rateLast11Yr = 100*(exp(log(RatioLast11Yr)/11)-1)
  
  BeginLast12Yr = x[dim(x)[1]-144,]
  RatioLast12Yr = Endpoint[3]/BeginLast12Yr[3]
  rateLast12Yr = 100*(exp(log(RatioLast12Yr)/12)-1)
  
  BeginLast13Yr = x[dim(x)[1]-156,]
  RatioLast13Yr = Endpoint[3]/BeginLast13Yr[3]
  rateLast13Yr = 100*(exp(log(RatioLast13Yr)/13)-1)
  
  BeginLast14Yr = x[dim(x)[1]-168,]
  RatioLast14Yr = Endpoint[3]/BeginLast14Yr[3]
  rateLast14Yr = 100*(exp(log(RatioLast14Yr)/14)-1)
  
  BeginLast15Yr = x[dim(x)[1]-180,]
  RatioLast15Yr = Endpoint[3]/BeginLast15Yr[3]
  rateLast15Yr = 100*(exp(log(RatioLast15Yr)/15)-1)
  
  Annual_Rate_Percent = round(as.numeric(c(rateLastYr, rateLast2Yr, rateLast3Yr, rateLast4Yr,
                                           rateLast5Yr,rateLast6Yr,rateLast7Yr,rateLast8Yr,rateLast9Yr,rateLast10Yr,
                                           rateLast11Yr,rateLast12Yr,rateLast13Yr,rateLast14Yr,rateLast15Yr,rateALL)),3)
  Time_Yrs = round(c(1:15,timeALL),1)
  Rate = cbind(Time_Yrs, Annual_Rate_Percent)
  ## Returns 1:15 and ALL available data annualzed rates of growth in a selected city
  return(Rate[,1])
}

#Function same as RateGrowth above but only returns the annualized growth rate vector at time in years calculated
GrowthVector = function(x){
  
  Endpoint = x[dim(x)[1],]
  Beginpoint = x[1,]
  RatioAll = Endpoint[3]/Beginpoint[3]
  timeALL = (dim(x)[1]-1)/12
  rateALL = 100*(exp(log(RatioAll)/timeALL)-1)
  
  BeginLastYr = x[dim(x)[1]-12,]
  RatioLastYr = Endpoint[3]/BeginLastYr[3]
  rateLastYr = 100*(exp(log(RatioLastYr)/1)-1)
  
  BeginLast2Yr = x[dim(x)[1]-24,]
  RatioLast2Yr = Endpoint[3]/BeginLast2Yr[3]
  rateLast2Yr = 100*(exp(log(RatioLast2Yr)/2)-1)
  
  BeginLast3Yr = x[dim(x)[1]-36,]
  RatioLast3Yr = Endpoint[3]/BeginLast3Yr[3]
  rateLast3Yr = 100*(exp(log(RatioLast3Yr)/3)-1)
  
  BeginLast4Yr = x[dim(x)[1]-48,]
  RatioLast4Yr = Endpoint[3]/BeginLast4Yr[3]
  rateLast4Yr = 100*(exp(log(RatioLast4Yr)/4)-1)
  
  BeginLast5Yr = x[dim(x)[1]-60,]
  RatioLast5Yr = Endpoint[3]/BeginLast5Yr[3]
  rateLast5Yr = 100*(exp(log(RatioLast5Yr)/5)-1)
  
  BeginLast6Yr = x[dim(x)[1]-72,]
  RatioLast6Yr = Endpoint[3]/BeginLast6Yr[3]
  rateLast6Yr = 100*(exp(log(RatioLast6Yr)/6)-1)
  
  BeginLast7Yr = x[dim(x)[1]-84,]
  RatioLast7Yr = Endpoint[3]/BeginLast7Yr[3]
  rateLast7Yr = 100*(exp(log(RatioLast7Yr)/7)-1)
  
  BeginLast8Yr = x[dim(x)[1]-96,]
  RatioLast8Yr = Endpoint[3]/BeginLast8Yr[3]
  rateLast8Yr = 100*(exp(log(RatioLast8Yr)/8)-1)
  
  BeginLast9Yr = x[dim(x)[1]-108,]
  RatioLast9Yr = Endpoint[3]/BeginLast9Yr[3]
  rateLast9Yr = 100*(exp(log(RatioLast9Yr)/9)-1)
  
  BeginLast10Yr = x[dim(x)[1]-120,]
  RatioLast10Yr = Endpoint[3]/BeginLast10Yr[3]
  rateLast10Yr = 100*(exp(log(RatioLast10Yr)/10)-1)
  
  BeginLast11Yr = x[dim(x)[1]-132,]
  RatioLast11Yr = Endpoint[3]/BeginLast11Yr[3]
  rateLast11Yr = 100*(exp(log(RatioLast11Yr)/11)-1)
  
  BeginLast12Yr = x[dim(x)[1]-144,]
  RatioLast12Yr = Endpoint[3]/BeginLast12Yr[3]
  rateLast12Yr = 100*(exp(log(RatioLast12Yr)/12)-1)
  
  BeginLast13Yr = x[dim(x)[1]-156,]
  RatioLast13Yr = Endpoint[3]/BeginLast13Yr[3]
  rateLast13Yr = 100*(exp(log(RatioLast13Yr)/13)-1)
  
  BeginLast14Yr = x[dim(x)[1]-168,]
  RatioLast14Yr = Endpoint[3]/BeginLast14Yr[3]
  rateLast14Yr = 100*(exp(log(RatioLast14Yr)/14)-1)
  
  BeginLast15Yr = x[dim(x)[1]-180,]
  RatioLast15Yr = Endpoint[3]/BeginLast15Yr[3]
  rateLast15Yr = 100*(exp(log(RatioLast15Yr)/15)-1)
  
  Annual_Rate_Percent = round(as.numeric(c(rateLastYr, rateLast2Yr, rateLast3Yr, rateLast4Yr,
                                           rateLast5Yr,rateLast6Yr,rateLast7Yr,rateLast8Yr,rateLast9Yr,rateLast10Yr,
                                           rateLast11Yr,rateLast12Yr,rateLast13Yr,rateLast14Yr,rateLast15Yr,rateALL)),3)
  Time_Yrs = round(c(1:15,timeALL),1)
  Rate = cbind(Time_Yrs, Annual_Rate_Percent)
  ## Returns 1:15 and ALL available data annualzed rates of growth in a selected city
  return(Rate[,2])
}

#Gets the selcted city fomr the input selected by user - name for output
city = function(x) {
  a = as.character(c("Composite 11 Cities", "Victoria", "Vancouver","Calgary", "Edmonton", "Winnipeg", "Hamilton",
                     "Toronto", "Ottawa", "Montreal", "Quebec City", "Halifax"))
  b = 1:12
  c= data.frame(a,b)
  c[,1] = as.character(c[,1])
  d = c[x,1]
  return(d)
}
  
  
