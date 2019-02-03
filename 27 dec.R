x <-c(33,22,55)
labels<-c("london","usa","new york")

##pie
piepercent<-round(100*x/sum(x))
png(file="piee.png")
pie(x,labels=piepercent,main="city pie chart",col=rainbow(length(x)))
legend("topright",labels,cex=0.8,fill=rainbow(length(x)))
dev.off()

install.packages("plotrix")
library("plotrix")
x<-c(10,20,30,40,50)
lbl<-c("DEL","GOI","BANG","MUM","PUN")

##piepercent<-round(100*x/sum(x))
png(file="pie3d.png")
pie3D(x,labels=lbl , explode=0.2,main="pie of countries")
legend("topright",lbl,cex=0.5,fill=rainbow(length(x)))
dev.off()

x<-c(20,30,50)
lbl<-c("BANG","MUM","PUN")

##piepercent<-round(100*x/sum(x))
png(file="pie_3d.jpg")
pie3D(x,labels=lbl , explode=0.2,main="pie of countries")
legend("topright",lbl,cex=0.5,fill=rainbow(length(x)))
dev.off()

h<-c(10,20,30,40,50,60)
m<-c("jan","feb","mar","apr","may","june")
png(file="bar_plot.jpg")
barplot(h,names.arg = m, main="bar graph",ylab="marks",xlab="months",col="blue")
dev.off()

str(samplesuperstore)
qty<-samplesuperstore$Quantity
pro<-samplesuperstore$Profit
necp= c()

for(a in pro){
  if(a>0){
    necp=append(necp,a)
  }
}
necp

str(samplesuperstore)

sales<-samplesuperstore$Sales
category<-samplesuperstore$Category
region<-samplesuperstore$Region
##east
te=0
fe=0
oe=0

i=1
while(i<length(region)){
  
  if(region[i]=="East"||category[i]=="Technology"){
    
    te=te+sales[i]
    
  }else if(region[i]=="East"||category[i]=="Furniture"){
    
    fe=fe+sales[i]
  } else  {
    oe=oe+sales[i]
  }
  i=i+1
}
te
fe
oe
###west
tw=0
fw=0
ow=0

i=1
while(i<length(region)){
  
  if(region[i]=="West"||category[i]=="Technology"){
    
    tw=tw+sales[i]
    
  }else if(region[i]=="West"||category[i]=="Furniture"){
    
    fw=fw+sales[i]
  } else  {
    ow=ow+sales[i]
  }
  i=i+1
}
tw
fw
ow
#centre
tc=0
fc=0
oc=0

i=1
while(i<length(region)){
  
  if(region[i]=="Central"||category[i]=="Technology"){
    
    tc=tc+sales[i]
    
  }else if(region[i]=="Central"||category[i]=="Furniture"){
    
    fc=fc+sales[i]
  } else  {
    oc=oc+sales[i]
  }
  i=i+1
}
tc
fc
oc
##south
ts=0
fs=0
os=0

i=1
while(i<length(region)){
  
  if(region[i]=="South"||category[i]=="Technology"){
    
    ts=ts+sales[i]
    
  }else if(region[i]=="South"||category[i]=="Furniture"){
    
    fs=fs+sales[i]
  } else  {
    os=os+sales[i]
  }
  i=i+1
}
ts
fs
os

regions<-c("East","West","Central","South")
colors<-c("red","pink","yellow","green")
category<-c("Technology","Furniture","Office supplies")
Values<-matrix(c(te,fe,oe,tw,fw,ow,tc,fc,oc,ts,fs,os),nrow=4,ncol=3,byrow = TRUE)

png(file="category_region_sales.png")

barplot(Values,main= "category wise region sales",names.arg = category,xlab="category",ylab = "sales",col=colors)

dev.off() 

offsum=0
fursum=0
techsum=0

i=1
while(i<length(category)){
  
  if(category[i]=="Technology"){
    
    techsum=techsum+sales[i]
    
  }else if(category[i]=="Furniture"){
    
    fursum=fursum+sales[i]
  } else  {
    offsum=offsum+sales[i]
  }
  i=i+1
}

offsum
fursum
techsum
 

regions<-c("East","West","South","Central")
items<-c("Office Supplies","Furniture","Technology")
colors <- c("green","orange","brown","pink")
Values<-matrix(c(offsum, fursum, techsum),nrow=1, ncol=3,byrow = TRUE)
png(file="bar_g.png")
barplot(Values,main="region vise sale", names.arg = items,xlab="items", ylab="regions" , col=colors )
dev.off()



