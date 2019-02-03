
##
setwd("C:\\Users\\Sonu Kumari\\Desktop")

data = read.csv("bmi.csv")

str(data)
height <- data$height
weight <- data$weight

out = lm(weight ~ height)

summary(out)

testdata = data.frame(height <-c(111,134,189) )

#predict
predict(out,newdata = testdata)

library("party")
mtcars
str(mtcars)
summary(mtcars)
library(caTools)
ind<-sample(2,nrow(mtcars),replace = TRUE, prob=c(0.8,0.2))
tdata<-data[ind==1,]
vdata<-data[ind==2,] 
model<-glm(type~.,data=tdata,family="binomial")
mtcars_train <- mtcars[1:24,]

mtcars_test <- mtcars[25:32,]
a<- mtcars$am
c<- mtcars$cyl
h<- mtcars$hp
w<- mtcars$wt
input <- mtcars[,c("am","cyl","hp","wt")]

out<-glm(formula=am~cyl+wt+hp,data=mtcars_train,family=binomial)
summary(out)

res<-predict(out,mtcars_test)
##
#install party library 
install.packages("party")

#load / import
library("party")


mtcars

str(mtcars)

summary(mtcars)

mpg<-mtcars$mpg
hp<-mtcars$hp
wt<-mtcars$wt

#car<-mtcars[c("mpg","hp","wt")]
#print(car)

out<-lm(mpg~hp+wt)

print(out)

summary(out)

testdata=data.frame(hp=210,wt=1200)
predict(out, testdata)
predict(out,mtcars$hp=210,mtcars$wt=1200)

setwd("C:\\Users\\Sonu Kumari\\Desktop")

record = read.csv("qwerty.csv")

print(record)

Profit <-record$Profit

print (Profit)
q<-Profit
necp = c()

z=0
for (a in q) {
  if(a>0){
    #print(a)
    necp = append(necp,a)    
   z=z+1
  }
}
z  
  

##pie chart 
# Create data for the graph.
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

png(file="out.jpg")
pie(x,labels)

dev.off()



###

pie(x,labels , main = "City pie chart", col = rainbow(length(x)))



#%
piepercent<- round(100*x/sum(x), 2)


pie(x, labels = piepercent, main = "City pie chart",
    col = rainbow(length(x)))
  legend("topright", labels , cex = 0.5,
       fill = rainbow(length(x)))

  

  
  ##3D
  #install.packages("plotrix")
  library("plotrix")
  
  
  # Create data for the graph.
  x <-  c(21, 62, 10,53)
  lbl <-  c("London","New York","Singapore","Mumbai")
  
  
  
  # Plot the chart.
  pie3D(x,labels = lbl,explode = 0.1, main = "Pie Chart of Countries ")
  
  
  ##bar chart
  H <- c(7,12,28,3,41)
  
  barplot(H)

  
  ##
  M <- c("Mar","Apr","May","Jun","Jul")
  
  barplot(H,names.arg =  M)
  
  
  barplot(H,names.arg = M,xlab = "Month",ylab = "Revenue",col = "blue",
          main = "Revenue chart",border = "red")
  
  
  ##
  # Create the input vectors.
  colors <- c("green","orange","brown")
  months <- c("Mar","Apr","May","Jun","Jul")
 ## Values <- c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11)
  
  # Create the matrix of the values.
  Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11),nrow = 3,ncol = 5,byrow = TRUE)
  
  # Give the chart file a name.
  png(file = "barchart_stacked.png")
  
  # Create the bar chart.
  barplot(Values,
          main = "total revenue",
          names.arg = months,
          xlab = "month",
          ylab = "revenue",
          col = colors)
  
  # Add the legend to the chart.
  legend("topleft", regions, cex = 0.5, fill = colors)
  
  # Save the file.
  dev.off()
  
  
  
  ###################
    seg =    record$Segment
    prof = record$Profit
  
    #Consumer Corporate Home Office
   
consum = 0
corsum=0
homsum=0 

i = 1 
while( i<= length(seg)){
  
  if(seg[i] =="Consumer"){
    consum = consum+ prof[i]
  }else if(seg[i]=="Corporate"){
    corsum = corsum+ prof[i]
    
  }else{
    homsum = homsum+ prof[i]
  }
  
  i=i+1
}
    
consum
corsum
homsum

segment <- c("Consumer","Corporate","Home Office")
profit<- c(consum,corsum,homsum)


##