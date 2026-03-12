#vector Arthimetic
x <- c (10.4,9.3,6.7)
y <- c (x,0,x)
z <-2 * x + y+1
z

#Sorting in Decsending order
Sorted_z1 <-sort(z,decreasing = TRUE)
Sorted_z1

#Sequence
1:30
2*1:15
30:1

##seq(from, to, by, length.out ,along.with , ...)
#1
seq(1,20)
#2
seq(20,1)
#3
seq(1,20,by=2)
#4
seq(1,20, length.out=30)
#5
2*seq(1,20)
#6
seq(-5, 5, by=.2) -> s3
s3
#7
s4 <- seq(length=51, 5, by=.2)
s4

#Generate a sequence seq3
#1
seq3 <- seq(from=-100, to=100, by=.6)
seq3
#2
mean(seq3)

#Sort seq3 in descending order
#1
sort(seq3, decreasing = TRUE)
#2
y <- c(1, 4, 6, 9)
x <- seq(from=0, to=20, along.with=y)
x

#rep Function
#1
x <- c(10.4,5.6,3.1,6.4,21.7)
x5 <- rep(x,times=5)
x5
#2
x6 <-rep(x,each=5)
x6


#Logical Vector (temp is a logical vector)
#1
temp <- x >13
x
temp
#2
x6
is.na(x6)
#3
z  <-c(1:4,NA)
result <-is.na(z)
result
#4
x
x1 <- x ==NA
x1
is.na(x)
#4
x <-c(10.4, 5.6,0.0,3.1,6.4,21.7)
y <-x[!is.na(x)]
y
#5
(x+1)[(!is.na(x)) & x>0] ->z
z

#Positive intergral vectors
x
x[1:10]
x[6]
x[4]


#Negative intergral vectors
#1
y <-x[-(1)]
y
#2
x
x[length(x)]

#Trial
#1
Subject<-c(1:7)
Gender<-c('Male', 'Male', 'Male', NA, 'Female', 'Female', 'Female')
Age<-c(24, 35, 45, 32, 21, 27 ,25)
Weight<-c(60.4, 62.5, 63.8, NA, 76.8, 74.3, 79.8)
Trial <-data.frame(Subject, Gender, Age, Weight)
View(Trial)

Trial[3,4]
View(Trial)

#installing Packaages
install.packages('data.table')
library(data.table)
setnames(Trial, old= 'Subject', new='Participant')
View(Trial)

#Missing Values
Trial[!complete.cases(Trial),]
(Trial_1 <- Trial[complete.cases(Trial),])

#Set Weight of Participant 4 to 65 & 4 to Female
Trial$Weight[Trial$Participant == 4]
Trial$Weight [Trial$Participant==4] <- 65.4
View(Trial)

Trial$Gender[Trial$Participant == 4]
Trial$Gender[Trial$Participant==4] <- 'Female'
View(Trial)

