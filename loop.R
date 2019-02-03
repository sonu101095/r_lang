i <- 1
while(i<6){
  print(i)
  i=i+1
}

i<-1
while (i<6){
  
  if(i %%2 ==0){
    print(i)
    break
  }
  print(i)
  i=i+1
}

<i-1
while(i<6){
  if(i==5){
    next
  }
  print(i)
  i=i+1
}

x ->11:66

for(a in x){
  
  if (a == 33){
    next
  }
  print(a)
}

i=0
repeat{
  i=i+1
  print(i)
  if(i==7){
    break
  }
}

data <- c(1,2,3,4,5,6,7,8,9)

for(a in data){
  print(a)
}

s1 <-7000
if(s1=5000 && 1000) {
  hra=s1*0.1
  da=s1*.05
}
hra
da


data <-c(1,2,3,4,55,66,3,5,88,98)
q=0

for(a in data){
  
  if(a==3){
    q=q+1
  
  }

}

q

v1<-c(20,19,18,17)
v2<-c(10,11,12,13)
q=v1-v2
q

v1 <-c(10,12,14,16)
avg=(10+12+14+16)/4
avg

a=0
for(a in v1){
  if(a>avg){
    print(a)
  }
}

v1 <-c(10,12,14,16)
mean(v1)
a=0

for(a in v1){
  if(a>mean(v1)){
    print(a)
  }
}
salary <- c(44444,323222,343444,5556,44444,55)

salary[3]  


v1 <-c(33,55,11,66)
a=0
for(a in v1){
  if(a==max(v1)){
    print(a)
  }
}

 for(a in v1){
   if(a<max(v1)){
     print(a)
   }
 }
v1[a]

v <-c(1,2,3,4,5,6)
a=0
for(a in v){
  
  print(a)
}

v1 <-c(1,3,4,5,6,2)
z <-sort(v1)
z

v1<- c(76,44,87,45,35,7576,1)
z<-sort(v1,decreasing = TRUE)
z

v1<-c("sonu","jassi","dipu","priya","addi")
z<-sort(v1)
z


a<-c(1,2,3,4,5)
b<-c(11,22,33,44,55)
5*a
a+b
data <-c("east","west","north","south","west","east","south")
data=factor(data)
data

a<-c(1,2,3,4,3,4,2,3,1,5,6,2,3,1)
a=factor(a)
a

a<- c(1,2,5,3)
revsort.result <-sort(a)
revsort.result

v <-c(1,2,3,5,4)
sort(v,decreasing = TRUE)

height <-c(129,134,157,148,150)
weight <-c(45,47,57,50,51)
gender <-c("female","male","male","female","male")

result <-data.frame(height,weight,gender)
result
is.factor(result$gender)
is.factor(result$weight)
result


  eid <-c(1,2,3,4,5)
  ename <-c("sanju","manju","anju","ganju","ranju")
  esalary <-c(10000,11000,11500,12000,12500)
  

emp<- data.frame(eid,ename,esalary)
emp
str(emp)
summary(emp)
a<-emp[c(1,3),]
a

l<- list(c("red","green"),matrix(c(1,2,3,4,5,6),nrow=2),
         list("sonu",2))  

names(l)<- c("first","matrix","list")
l
l[2]


