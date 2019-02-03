library("party")
mtcars
str(mtcars)
summary(mtcars)
mtcars_train <- mtcars[1:24,]

mtcars_test <- mtcars[25:32,]
a<- mtcars$am
c<- mtcars$cyl
h<- mtcars$hp
w<- mtcars$wt
out<-glm(a~c+w+h,data=mtcars_train,family=binomial)
summary(out)
predict(out,data=mtcars_test)