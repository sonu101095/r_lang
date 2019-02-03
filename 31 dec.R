
x <- seq(-10, 10, by = .1)

y <- dnorm(x, mean = 2.5, sd = 0.1)

plot(x,y)

y <- pnorm(x, mean = 2.5, sd = 1)


plot(x,y)


setwd("C:\\Users\\Sonu Kumari\\Desktop")

data=read.csv("qwerty.csv")
profit<-data$Profit
sales<-data$Sales
p<-profit
s<-sales
##mean
m<-mean(s)

mp<-mean(p)

##standard deviation
ds<-sd(s)

dsp<-sd(p)
y <- dnorm(sales, mean = m, sd = ds)
plot(sales,y)
y <- pnorm(sales, mean = m, sd = ds)
plot(sales,y)
y <- pnorm(profit, mean = mp, sd =20)
plot(profit,y)
y <- dnorm(profit, mean = mp, sd =20)
plot(profit,y)
