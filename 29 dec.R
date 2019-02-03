setwd('C:\\Users\\Sonu Kumari\\Desktop')
getwd()
s<-scan("testfile.txt","character",sep="\n");
s<-gsub("\\.","",s)
s<-gsub("\\,","",s)
words<-strsplit(s," ")
words= unlist(words)
words.freq<-table(words);
cbind(names(words.freq),as.integer(words.freq))
barplot(words.freq, col="red")

ss<-scan("p.txt","character",sep="\n");
ss<-gsub("\\,","",ss)
ss<-gsub("\\.","",ss)
words<-strsplit(ss," ")
words=unlist(words)
words.freq<-table(words)
cbind(names(words.freq),as.integer(words.freq))
barplot(words.freq, col="brown")
