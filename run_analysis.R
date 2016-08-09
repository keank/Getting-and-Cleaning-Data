##basic setup
library(dplyr)
library(reshape2)

##imports data
testXdat<-read.table("./test/X_test.txt")
testYdat<-read.table("./test/Y_test.txt")

trainXdat<-read.table("./train/X_train.txt")
trainYdat<-read.table("./train/Y_train.txt")

##merges training and test datasets vertically
Xdat<-rbind(trainXdat,testXdat)
Ydat<-rbind(trainYdat,testYdat)

##labels col names
columnnames<-read.table("./features.txt")
colnames(Xdat)<-columnnames[,2]

colsindex<-c(grep("mean\\(\\)",colnames(Xdat)),grep("std",colnames(Xdat)))
colsindex<-sort(colsindex)
Xdatreq<-Xdat[,colsindex]

colnames(Xdatreq)<-gsub("-"," ",colnames(Xdatreq))
colnames(Xdatreq)<-gsub("\\(\\)","",colnames(Xdatreq))
#colnames(Xdatreq)

##labels activity names
activitynames<-read.table("./activity_labels.txt")
activitynames<-activitynames[,2]
yfac<-factor(Ydat$V1, levels=c(1,2,3,4,5,6), labels=activitynames)

##merges the activity names and the mean and std statistics
dat<-cbind(yfac,Xdatreq)
colnames(dat)[1]='activity'

##labels dataset with information on subject
testsubnames<-read.table("./test/subject_test.txt")
trainsubnames<-read.table("./train/subject_train.txt")
subnames<-rbind(trainsubnames,testsubnames)
datl<-cbind(dat,as.factor(subnames$V1))
colnames(datl)[68]='subject'

##to further ensure row order has not changed the following are
##checks to ensure that the order of observations stays the same
# head(datl[,1:5])
# head(Xdat[,1:5])
# head(trainXdat[,1:5])
# tail(datl[,1:5])
# tail(testXdat[,1:5])
# head(datl[,68])
# head(trainsubnames)
# tail(datl[,68])
# tail(testsubnames)
# head(datl[,1])
# head(trainYdat) #matches as standing is 5
# tail(datl[,1])
# tail(testYdat)  #matches as walking upstairs is 2

##creates a tidy dataset to show averages of each variable for each subject and activity
var<-colnames(datl)[2:67]
datlmelt<-melt(datl,id=c('subject','activity'),measure.vars=var)
tidydat<-dcast(datlmelt,subject+activity~var, mean)
#write.table(tidydat, file="./tidydat.txt", row.names=FALSE) #use to write to txt file
