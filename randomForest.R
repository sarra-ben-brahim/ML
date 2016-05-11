### Classification:
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
#exemple:nombre de fois ou chaque individu est "out of bag"
#les 5 premiers
model$oob.times[1:5]
#exemple d'echantillon d'individus
E=c(30,70,60)
train$Species[E]
model$oob.times[E]
model$votes[E,]
#note:generalement pour chaque arbre le tirage de "bag" est outour
#de 66%  et 34% out "of bag"
#importance variable for the split 
model$importance
varImpPlot(model)
plot(model)
#the positive margin means the correct classification
plot(margin(model,test$Species))