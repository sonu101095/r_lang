##D6
v<- c(9,5,3,1,4,2)
max(v)

##OR

v<-c(9,3,4,1)
a=0
for(a in v){
  if(a==max(v)){
    print(a)
    
  }
}

##D7

v<-c(11,22,33,44,55)
v
a<-sort(v, decreasing = TRUE)
a
##D8
v1<-c(3,1,2)
v1
s1<-sort(v1)
s1

v2<-c(9,4,8)
v2
s2<-sort(v2)
s2
a<-array(c(s1,s2),dim=c(3,2,2))
a
##D9


##D10
v<-c(1,2,3,4,5,6,-7,-8,-9,10,11,12,13,14,1,16,17,18,19,20)
q=0
for(a in v){
  if(a>0){
    
    print(a)
    q=q+1
    
}
}
q

z=0
for(a in v){
  if(a<0){
    print(a)
    z=z+1
  }
}
z
w=0
for(a in v){
  if(a%%2==0){
    print(a)
    w=w+1
  }
}
w

s=0
for(a in v){
  if(a%%2!=0){
    print(a)
    s=s+1
  }
}
s

##D11
a <-c(3,-5,1,3,7,0,-15,3,-7,-8)

for (z in a){
  if(z<0){
    print(z)
  }
}

for(z in a){
  if(z>0){
    print(z)
  }
}





##D15
v<-c(34,86,45,90,76,88,100,95,92,97)
q=0
for(a in v){
  if(a>75){
    print(a)
    q=q+1
  }
}
q

####d6

v <- c(33,444,2322,444,333)

m = 0
mi = 0

i =1
while(i  <= 5){
  
  if(m<v[i]){ # 0<33, 33<444  , 444<2322, 2322<444 false , 2322<333 false
    
    m = v[i]  # m =33, m =444, m = 2322 
    mi = i    
  }
  
  i=i+1
}

m
mi 

##
m2 =0
mi2= 0

i =1
while(i  <= 5){
  
  if(m2<v[i] && v[i]<m){ # 0<33, 33<444  , 444<2322, 2322<444 false , 2322<333 false
    
    m2 = v[i]  # m =33, m =444, m = 2322 
    mi2 = i    
  }
  
  i=i+1
}

m2
mi2


n = 123
n%/%100   =1
n%%10  = 3

### d7

v <- c(33,444,2322,444,333)

i = 5
while(i>=1){
  
    print(v[i])
    i =i-1
}

###d8
v<- c(22,33,4,222,2)
v = sort(v)

v = append(v,100)
v = sort(v)
##d
##d12
a<-c(1,2,3,4,5,6,7,8)
a
b<-c(11,12,13,14,15,16)
b
c<-(c(a(1:5),b(2:6)))
c

##d14
v<-c(3,5,7,9,4,21)
x=0
for(a in v){
  if(a%%x==1){
    print(a)
    
  }
}


##

data <- c(333,444,222,43,55,3,11,66,77,89)

for(n in data){
  
      #n = 43
      d = 2
      isprime = 1
      
      while(d<n){
        
          if(n%%d ==0){
            isprime = 0
          }
        
          d =d+1
      }
      
      if(isprime ==0){
        
        print( paste(n," not prime"))
      }else{
        
        print( paste(n," prime"))
      }

}

##### 100  - 999
##  n = 153 == 1^3 + 5^3 + 3^3 
n=145

a= n%/%100 #= 1
b = n%/%10#=12
b = b%%10  #= 2
c = n%%10   #= 3

if(a^3 + b^3 + c^3 == n)
  


v<- c(100:999)

for( n in v) {
     a= n%/%100 #= 1
     b = n%/%10#=12
     b = b%%10  #= 2
     c = n%%10   #= 3
     
     if(a^3 + b^3 + c^3 == n)  {
       print(n)
    
  }
}


####
#stats
####

v<- c(1:1000)

range(v)
# mean  = 23
# (n1-23)^2 + (n2-23)^2  / n 

var(v)
sd(v)
mean(v)

#quantile # 0% 25% 50% 75% 100%
v<- seq(-10,10,by=.1)

quantile(v)

#percentile
quantile(v,c(.17,.33,.37,.41,.56,.77,.89,.92))



