
str(mtcars)

mtcars$mpg
mtcars$cyl
#Boxplot
boxplot(mpg~cyl,data=mtcars, main="car milage",
        xlab="number of cylinders",
        ylab="miles per gallon")



boxplot(mpg~cyl,data=mtcars,horizontal=TRUE, main="car milage",
        xlab="number of cylinders",
        ylab="miles per gallon")

samplesuperstore$Profit
samplesuperstore$Quantity
samplesuperstore$Sales

boxplot(Quantity~Sales,data=samplesuperstore, main="quantity vise sales",
        xlab="quantity",
        ylab="sales")

#scatterplot

attach(mtcars)
plot(wt,mpg,main="scatterplot ",xlab="car weight",
     ylab="miles per gallon" )

attach(samplesuperstore)
plot(Sales,Profit, main = "scatterplot",xlab="no of sales",ylab="no of profit"
)
#heatmap

require(graphics);
#require(grvDevices)

x <- as.matrix(mtcars)

rc <- rainbow(nrow(x),start=0, end=.3)
cc <- rainbow(ncol(x), start =0, end=.3)

hv <- heatmap(x,ColV=NA, COL=cm.colors(256), scale = "column",
        RowSideColors = rc,
        ColSideColors = cc,
        margins = c(5,10),
        xlab = "specification variables",
        ylab = "car modles",
        main="mtcars data")
utils::str(hv)

xx <- as.matrix(samplesuperstore)

rcc <- rainbow(nrow(xx),start=0, end=.3)
ccc <- rainbow(ncol(xx), start =0, end=.3)
hvv <- heatmap(xx,ColV=NA, COL=cm.colors(256), scale = "column",
              RowSideColors = rcc,
              ColSideColors = ccc,
              margins = c(5,10),
              xlab = "specification variables",
              ylab = "car modles",
              main="mtcars data")
utils::str(hvv)
#mosaic
install.packages("vcd")
library(vcd)

mosaic(HairEyeColor,shade = TRUE,legend=TRUE)

#CORRGRAM
install.packages("corrgram")
install.packages("rlang")
library(corrgram)
corrgram(mtcars, order=TRUE,lower.panel=panel.shade,
         upper.panel=panel.pie,
         text.panel=panel.txt,
         main="corr")


#plot3D
install.packages("plot3D")
library(plot3D)

data(iris)
head(iris)




x <- sep.l <- iris$Sepal.Length
y <- pet.l <- iris$Petal.Length
z <- sep.w <- iris$Sepal.Width

scatter3D(x,y,z, clab=c("sepal","Width(cm)"))


#####
install.packages("ggmap")
library(ggmap)

qmap(location = "boston university")

