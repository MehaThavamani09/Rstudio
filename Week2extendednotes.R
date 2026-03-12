#
Manager<-c(1:5)
Date<-c("2018-15-10", "11/01/2018", "2018-21-10", "2018-28-10", "05/01/2018")
Country<-c('US', 'US', 'IRL', 'IRL', 'IRL')
Gender<-c('M', 'F', 'F', 'M', 'F')
Age<-c(24, 35, 45, 32, NA)
Q1<-c(5, 3, 3, 3, 2)
Q2<-c(4, 5, 5, 3, 2)
Q3<-c(5, 2, 5, 4, 1)
Q4<-c(5, 5, 5, NA, 2)
Q5<-c(5, 5, 2, NA, 1 )
manager_dataset<-data.frame(Manager, Date, Country, Gender, Age, Q1, Q2, Q3, Q4, Q5)
View(manager_dataset)

manager_dataset[1:5,]
str(manager_dataset)

#Recode the incorrect age data to NA 
#1
manager_dataset$Age [manager_dataset$Age == 5] <-NA

manager_dataset$Age[manager_dataset$Age == 5] <- 99
manager_dataset
#2
manager_dataset$Age[manager_dataset$Age == 99] <- 25
manager_dataset
#Dropping the manager Column
#1
manager_dataset_1 <- subset(manager_dataset,
                            select = -Manager)
manager_dataset_1

#2
manager_dataset_2 <- subset(manager_dataset,
                            select = -1)
manager_dataset_2

#3
manager_dataset <- manager_dataset[,(2:10)]
manager_dataset


#Create a new column or new attribute called agecatand set values
manager_dataset$Agecat <- 5
manager_dataset$Agecat[manager_dataset$Age <= 25] <- "Young"
manager_dataset$Agecat[manager_dataset$Age >= 40] <- "Elder"
manager_dataset$Agecat[manager_dataset$Age >= 26 & manager_dataset$Age <= 40] <-"Middle Aged"
manager_dataset

#2
class(manager_dataset$Agecat)

manager_dataset$Agecat <- factor(manager_dataset$Agecat,
                                 order = TRUE,
                                 levels = c("Young", "Middle Aged", "Elder"))
manager_dataset

#calculating all the Q's and pushing the values to the another column(row summary)

manager_dataset$summary_col <-
  manager_dataset$Q1 +
  manager_dataset$Q2 +
  manager_dataset$Q3 +
  manager_dataset$Q4 +
  manager_dataset$Q5 
manager_dataset


#create a new column and to show the mean value for each row
mean_value <- rowMeans(manager_dataset[5:9])
manager_dataset <- data.frame(manager_dataset, mean_value)
manager_dataset

#Change the name of the mean_value column to Mean Value Column
names(manager_dataset)[12] <- "Mean Value"
#change the name of the Summary_col to Answer Total column
names(manager_dataset)[11] <- "Answer Total"
manager_dataset


 