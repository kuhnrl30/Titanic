setwd("/users/ryan.l.kuhn.questus/documents/RProjects/Data")
setwd("/Users/Owner/Documents/Analytics/Kaggle/Titanic")
Train<- read.csv("train.csv", stringsAsFactors=FALSE)

#############################################
##Cabin analysis:  Create a subset with cabin data
#############################################
Train.cabin.sub<- Train[(!Train$Cabin==""),c(1:3,9:12)]
Train.cabin.sub$Deck<- substr(Train.cabin.sub$Cabin,1,1)

mosaicplot(Train.cabin.sub$Pclass~Train.cabin.sub$Survived)
