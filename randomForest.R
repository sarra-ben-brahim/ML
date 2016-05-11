#get the data
data(iris)
head(iris)
#split the data into train and test 
ind=sample(2,nrow(iris),replace=TRUE,prob=c(0.7,0.3))
train=iris[ind==1,]
test=iris[ind==2,]

#random forest model
library(randomForest)
model=randomForest(Species ~ . , data=train)
#matrix_confusion
model$confusion

#make a predection 
pred=predict(model,test)
#evaluate the model
Cf=table(pred,test$Species)
accuracy=sum(diag(model$confusion))/sum(model$confusion)
error=1-accuracy