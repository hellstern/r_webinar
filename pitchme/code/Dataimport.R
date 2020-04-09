# **************************
# Data Import
# **************************

data()

cars <- data("mtcars")

# **************************
# Web
# **************************
install.packages("RCurl")
install.packages("XML")
install.packages("stringr")
install.packages("plyr")

library(RCurl)
library(XML)
library(stringr)
library(plyr)

# Den web side/URL vi skal bruge
minurl <- "http://xweb.geos.ed.ac.uk/~weather/jcmb_ws/CR1000_Weather.dat"

WeatherStationData <- read.table(minurl, skip=2, header=TRUE)


# **************************
# Clipboard
# **************************

dataKlip <- readClipboard()

dataKlip


dataKlip <- read.table(file="clipboard", sep ="t", header=TRUE)

dataKlip


#
# mySQL
#
mysqlconnection = dbConnect(MySQL(), user = 'root', password = '', dbname = 'sakila',
                            host = 'localhost')

dbListTables(mysqlconnection)