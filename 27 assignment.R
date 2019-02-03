str(samplesuperstore)

sales<-samplesuperstore$Sales
category<-samplesuperstore$Category

offsum=0
fursum=0
techsum=0

i=1
while(i<length(category)){
  
  if(category[i]=="Technology"){
    
    techsum=techsum+sales[i]
  
    }else if(category[i]=="Furniture"){
    
      fursum=fursum+sales[i]
  }else{
    offsum=offsum+sales[i]
  }
  i=i+1
}

  offsum
  fursum
  techsum
  
s<-sales
v<-c(offsum, fursum, techsum)
q<-c("Office Supplies","Furniture","Technology")
png(file="bar_g.png")
barplot(v, names.arg = q )
dev.off()