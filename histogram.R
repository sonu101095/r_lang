install.packages("ggplot2")
library(ggplot2)

theme_set(theme_classic())

setwd("C:\\Users\\Sonu Kumari\\Desktop")
sampledata=read.csv("qwerty.csv")
# Histogram on a Categorical variable
g<-ggplot(sampledata , aes(Sub.Category))

g + geom_bar(aes(fill=Region), width = 0.5) + 
  
  theme(axis.text.x = element_text(angle=65, vjust=0.6)) + 
  
  labs(title="Histogram on Categorical Variable", 
       
       subtitle="Manufacturer across Vehicle Classes") 

