

#Load the following CSV file to your R environment : 	http://www.math.smith.edu/sasr/datasets/help.csv
data=read.csv("http://www.math.smith.edu/sasr/datasets/help.csv")


#Using the above file perform the following, 
#Create a dataframe of: id, pcs1, mcs1, substance, and race group
dataset=data[c("id","pcs1","mcs1","substance","racegrp")]


#Calculate: Mean, Max, STD, Max, Min of mcs1
#mean
mean=colMeans(dataset[3], na.rm = TRUE)
mean
#maximum
max=max(dataset$mcs1, na.rm = TRUE)
max
#mininmum
min=min(dataset$mcs1,na.rm = TRUE)
min
#sd
std_deviation=sd(dataset$mcs1,na.rm = TRUE)
std_deviation


#Create a frequency  table of substance vs. racegroup
table(dataset$substance, dataset$racegrp)


#Substitute the missing values of mcs1 by the overall average
dataset$mcs1[which(is.na(dataset$mcs1))] <- mean
dataset
View(dataset)
