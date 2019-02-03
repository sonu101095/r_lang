
install.packages("party")

library(party)


readingSkills
str(readingSkills)
head(readingSkills)


input.dat <- readingSkills[c(1:105),]

out = ctree(nativeSpeaker ~ age + shoeSize + score, 
      data = input.dat
)

png(file = "abcabc.png")
plot(out)


dev.off()

getwd()




rainfall <- c(799,1174.8,865.1,1334.6,635.4,918.5,685.5,998.6,784.2,985,882.8,1071)

# Convert it to a time series object.
rainfall.timeseries <- ts(rainfall,start = c(2012,1),frequency = 12)


plot(rainfall.timeseries,x = c(1:12))





