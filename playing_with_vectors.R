
#2.1  Create the following x and y vectors:
#  x= 1,2,3
#  y= 11,12,13,14,15,16

x=c(1,2,3)
y=c(11,12,13,14,15,16)

#  2.2   Calculate and display z=x+y.

z=x+y
z

#  2.3   Explain the results.
#  When the vector x is added to vector y then then the shorter vector x is recycled to match the length of the vector y and then they are added

#  2.4   Create a vector of your last name.

lastName=c("Patil")

#  2.5   Create a vector of your first name.

firstName=c("Anurag")

#  2.6   Create a vector of your student ID.

studentID=c(10420393)

#  2.7   What are the length and data type of the "last name" vector? Why?
# The data Type of the lastName vector is "character" because it is a String value
# The length of the lastName vector is 1 since there is only 1 value in the vector lastName.
class(lastName)
length(lastName)

#2.8   Combine your first name, last name and student id into a single vector ("myinfo").

myinfo=c(firstName,lastName,studentID)

#2.9   Display "myinfo" in the Console.

myinfo

#2.10 What are the length and data type of "myinfo"?

class(myinfo)
length(myinfo)

#2.11 Remove the "first_name" object.

rm(firstName)

#2.12 Display "myinfo" in the Console again.
myinfo                                                                              

#2.13 Create a dataframe "roster"  using the following table:
#  First     	  Last         ID
# fname1       lname1       1111
# fname2       lname2       2222

First=c("fname1","fname2")
Last=c("lname1","lname2")
ID=c(1111,2222)
roster=data.frame(First,Last,ID)



#2.14 View the "roster".

roster
View(roster)

#2.15 Export the data frame "roster" to a csv file.
?write.csv
write.csv(roster, file="roster.csv")

#2.16 Import and view the following csv file:         	http://www.math.smith.edu/sasr/datasets/help.csv

help=read.csv("http://www.math.smith.edu/sasr/datasets/help.csv")
View(help)

#2.17 Remove all the objects in your session.

rm(list = ls())
