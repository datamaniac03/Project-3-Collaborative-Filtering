
#-------user based and item based collab filtering--------------------
library(recommenderlab)
fulldata=read.csv("inputfile.csv")
trans1 <- as(t(t(fulldata)), "transactions")  #converting matrix to transaction type
trans1

affinity.matrix<- as(trans1,"realRatingMatrix")
(affinity.matrix)

Rec.model<-Recommender(affinity.matrix[1:70], method = "UBCF",param=list(method="Jaccard",nn=20, minRating=1)) #for user based CF

Rec.model

recommended.items <- predict(Rec.model, affinity.matrix[71:100], n=10)
UBCF.items=as(recommended.items, "list")
library(tm)
review_source <- VectorSource(IBCF.items)
corpus <- Corpus(review_source)

dtm=DocumentTermMatrix(corpus)
inspect(dtm)
dtm_matrix <- as.matrix(dtm)
write.csv(dtm_matrix,"UBCF result new.csv")
