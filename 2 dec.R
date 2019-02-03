install.packages("survival")
library("survival")

pbc
str(pbc)

print(head(pbc))

pbc$status == 2
pbc$time

survfit(Surv(pbc$time,pbc$status == 2)~1)

plot(survfit(Surv(pbc$time,pbc$status == 2)~1))
