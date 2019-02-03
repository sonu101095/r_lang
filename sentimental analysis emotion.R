#library
library("devtools")

library("SnowballC")
library("tm")
library("twitteR")
library("syuzhet")


customer.key<-'8aTtutJ0QbmPG6XyMgKKaj7Jn'
customer.secret<-'ayv9gc9zUsMJyLGM5IqC6DU5qVHz4hLODxVEMBLDtMQB6HKfiG'
access.token<-'1081102466853339136-vIg12uVoUg0cZDCtE0ELzpPw8POWMi'
access.secret<-'PkXoX5EosGyqSapLUoltSE4D3E5QBispdeeygdYvjBlVu'

setup_twitter_oauth(customer.key,customer.secret,access.token,access.secret)

tweetpc <- userTimeline("priyankachopra",n=200)

t.pc<-twListToDF(tweetpc)

str(t.pc)

t<- gsub("http.*","",t.pc$text)

t<-gsub("#.*","",t)
t<-gsub("@.*","",t)

word.df<-as.vector(t)
emotion.df<-get_nrc_sentiment(word.df)
emotion.df2<-cbind(t,emotion.df)

emotion.df2[1:2,]
sent.value<-get_sentiment(word.df)

positive.tweets<-word.df[sent.value>0]
head(positive.tweets)

negative.tweets<-word.df[sent.value<0]
head(negative.tweets)


neu.tweets<-word.df[sent.value==0]
head(neu.tweets)






