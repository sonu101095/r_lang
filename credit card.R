setwd("C:\\Users\\Sonu Kumari\\Desktop")
cstraning<-read.csv("cs-training.csv")
cstest<-read.csv("cs-test.csv")
sampleentry<-read.csv("SampleEntry.csv")
datadictionary<-read.csv("Data Dictionary") 
mi<-cstest$MonthlyIncome
a<-cstest$age
n90<-cstest$NumberOfTimes90DaysLate
d<-cstest$DebtRatio
notD<-cstest$NumberOfDependents
p<-sampleentry$Probability
length(p)
length(notD)
length(d)
length(n90)
length(a)
length(mi)

print(credit.data)

out<-lm(p~mi+a+n90+d+notD)

print(out)
credit.data<- data.frame(mi,a,n90,d,notD)

predict(out, credit.data)