install.packages("class")

library(class)

setwd("C:\\Users\\Sonu Kumari\\Desktop")
getwd()

prc<-read.csv("Prostate_Cancer.csv" ,stringsAsFactors = FALSE)

stringsAsFactors = FALSE
str(prc)
prc<-prc[-1]

table(prc$diagnosis_result)
prc$diagnosis <- factor(prc$diagnosis_result, levels = c("B", "M"), 
                        labels = c("Benign", "Malignant"))

round(prop.table(table(prc$diagnosis))*100, digits = 1)

normalize<-function(x){
  return ((x - min(x)) / (max(x) - min(x)))  
}

prc_p<- as.data.frame(lapply(prc[2:9], normalize))

summary(prc_p$area)

prc_train<-prc_p[1:65,]
prc_test<-prc_p[66:100,]

prc_train_labels<-prc[1:65,1]
prc_test_labels<-prc[66:100,1]

prc_test_pred <- knn(train = prc_train,
                     test = prc_test,
                     cl = prc_train_labels,
                     k=10)

library("class")


setwd("C:\\Users\\Sonu Kumari\\Desktop")
getwd()
sass<-read.csv("samplesuperstore.csv",stringsAsFactors = FALSE)

stringsAsFactors = FALSE
str(sass)
sass<-sass[-1]

table(sass$Region)
sass$r<-factor(sass$Region,levels=c("Cental","East","South","West"),
         labels=c("C","E","S","W"))

round(prop.table(table(sass$r))*100, digits = 1)

normalize<-function(x){
  return ((x - min(x)) / (max(x) - min(x)))  
}
dis<-samplesuperstore$Discount
sal<-samplesuperstore$Sales
pro<-samplesuperstore$Profit

data.sa=data.frame(dis,
                   sal,
                   pro
)

sass_s<- as.data.frame(lapply(data.sa[1:3], normalize))

summary(sass_s$dis)

sass_train<-sass_s[1:65,]
sass_test<-sass_s[66:8994,]

sass_train_labels<-sass[1:65,1]
sass_test_labels<-sass[66:8994,1]

sass_test_pred <- knn(train = sass_train,
                     test = sass_test,
                     cl = sass_train_labels,
                     k=10)





