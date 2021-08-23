## ----setup, echo=FALSE--------------------------------------------------------
knitr::opts_chunk$set(message=FALSE, fig.path='figures/', eval=FALSE)

## ----tidy = TRUE, eval = FALSE------------------------------------------------
#  install.packages("openSkies")

## ----tidy = TRUE, eval = TRUE-------------------------------------------------
library(openSkies)

## ----tidy = TRUE--------------------------------------------------------------
#  # Get all flights that arrived at Frankfurt International Airport on the 29th of
#  # January, 2018 between 12 PM and 1 PM, local time.
#  
#  getAirportArrivals(airport="EDDF", startTime="2018-01-29 12:00:00",
#                     endTime="2018-01-29 13:00:00", timeZone="Europe/Berlin")

## ----tidy = TRUE--------------------------------------------------------------
#  # Get all flights that departed from Barcelona Airport on the 12th of October,
#  # 2020 between 5 AM and 7 AM, local time.
#  
#  getAirportDepartures(airport="LEBL", startTime="2020-10-12 05:00:00",
#                       endTime="2020-10-12 07:00:00", timeZone="Europe/Madrid")

## ----tidy = TRUE--------------------------------------------------------------
#  # Get all flights registered for the aircraft with ICAO 24-bit address 346190
#  # during the 26th of July, 2019.
#  
#  getAircraftFlights("346190", startTime="2019-07-26 00:00:00",
#                     endTime="2019-07-26 23:59:59", timeZone="Europe/Madrid")

## ----tidy = TRUE--------------------------------------------------------------
#  # Obtain a list with information for all the flights registered during the 16th
#  # of November, 2019 between 9 AM and 10 AM, London time.
#  
#  flights <- getIntervalFlights(startTime="2019-11-16 09:00:00",
#                                endTime="2019-11-16 10:00:00",
#                                timeZone="Europe/London")
#  
#  # Count the number of registered flights.
#  
#  length(flights)

## ----tidy = TRUE--------------------------------------------------------------
#  # Obtain a list with the state vectors for all aircrafts currently flying over
#  # an area covering Switzerland.
#  
#  getSingleTimeStateVectors(minLatitude=45.8389, maxLatitude=47.8229,
#                            minLongitude=5.9962, maxLongitude=10.5226)
#  
#  # Obtain the state vector for aircraft with ICAO 24-bit address 403003 for
#  # the 8th of October, 2020 at 16:50 London time.
#  
#  getSingleTimeStateVectors(aircraft="403003", time="2020-10-08 16:50:00",
#                            timeZone="Europe/London")

## ----tidy = TRUE--------------------------------------------------------------
#  # Obtain a time series of state vectors for the aircraft with ICAO 24-bit
#  # address 403003 for the 8th of October, 2020 between 16:50 and 16:53 (London
#  # time), with a time resolution of 1 minute.
#  
#  getAircraftStateVectorsSeries("403003", startTime = "2020-10-08 16:50:00",
#                                endTime = "2020-10-08 16:52:00",
#                                timeZone="Europe/London", timeResolution=60)

