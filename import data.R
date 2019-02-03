


#######################csv############################
setwd("C:\\Users\\Sonu Kumari\\Desktop")
data= read.csv("samplesuperstore.csv"header=TRUE)

write.csv(data,"datacopy.csv")

#################web##########################
install.packages("RCurl")
install.packages("XML")
install.packages("stringr")
install.packages("plyr")

library(RCurl)
library(stringr)
library(plyr)


X <- read.csv(url("https://www.geos.ed.ac.uk/~weather/jcmb_ws/JCMB_2007_Apr.csv"))

#xml
install.packages("XML")
install.packages("methods")
library("XML")
library("methods")
setwd("C:\\Users\\Sonu Kumari\\Desktop")

result <- xmlParse(file="xmldata.xml")
#root node
rootnode <- xmlRoot(result)
#xml file to dataframe
xmldataframe <- xmlToDataFrame("data.xml")

print(xmldataframe)

######################rjson##########################3
install.packages("rjson")
library("rjson")
setwd("C:\\Users\\Sonu Kumari\\Desktop")

rresult <- fromJSON(file = "data.json")

# Convert JSON file to a data frame.

json_data_frame <- as.data.frame(rresult)

#excel
install.packages("xlsx")

library(xlsx)
setwd("C:\\Users\\Sonu Kumari\\Downloads")

data<- read.xlsx( "Sample - Superstore", sheetIndex=1)



#binary
