
library(class)
#Load the IRIS dataset
dataset=data.frame(iris)
View(dataset)

#Read the data and:
#Store every fifth record in a "test" dataset starting with the first record
test=dataset[(seq(1,to=nrow(dataset),by=5)),-5]
test2=dataset[(seq(1,to=nrow(dataset),by=5)),5]

#Store the rest in the "training" dataset
training=dataset[-(seq(1,to=nrow(dataset),by=5)),-5]
training2=dataset[-(seq(1,to=nrow(dataset),by=5)),5]

#Use knn with k=1 and classify the test dataset
knn_k_1= knn(train = training,test=test,training2,k=1)
#Measure the performance of knn where k=1
table(Predict=knn_k_1,Actual=test2)


#Repeat the above steps with k=2, k=5, k=10.
knn_k_2= knn(train = training,test=test,training2,k=2)
table(Predict=knn_k_2,Actual=test2)



#k=5
knn_k_5= knn(train = training,test=test,training2,k=5)
table(Predict=knn_k_5,Actual=test2)

#k=10
knn_k_10= knn(train = training,test=test,training2,k=10)
table(Predict=knn_k_10,Actual=test2)