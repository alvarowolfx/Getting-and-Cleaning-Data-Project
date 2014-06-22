
## Read de list of variables names from the file with the vector of features
readFeaturesNames <- function(){
  features <- read.delim(file='UCI HAR Dataset/features.txt',
                         header=FALSE,
                         sep=' ',
                         col.names=c('id','name'))
  features$name
}


## Inform with dataset you want to read, Test ou Train dataset
readDataSet <- function(dataset='test'){
  featuresNames <- readFeaturesNames()
    
  xFileName <- paste('UCI HAR Dataset/',dataset,'/X_',dataset,'.txt',sep='')
  X <- read.table(xFileName,quote="\"",col.names=featuresNames)
  yFileName <- paste('UCI HAR Dataset/',dataset,'/y_',dataset,'.txt',sep='')
  Y <- read.table(yFileName,col.names=c('ActivityID'))
  subjectFileName <- paste('UCI HAR Dataset/',dataset,'/subject_',dataset,'.txt',sep='') 
  subject <- read.table(subjectFileName,col.names=c('SubjectID'))
  cbind(subject,Y,X) 
  
}

## 1
## Return merged test and train datasets
readMergedDataSets <- function(){    
  testDataSet <- readDataSet('test')
  trainDataSet <- readDataSet('train')
  rbind(testDataSet,trainDataSet)
} 

## 2
## Extract mean and standard deviation of the dataset
## This step choose only the variables that contains 'mean' and 'std' in the name
extractMeanAndStd <- function(dataset){
  
  fields <- names(dataset)
  fieldsToStay <- intersect(grep('mean|std|ActivityID|SubjectID',fields),
                            grep('meanFreq',fields,invert=TRUE))
  dataset[,fieldsToStay]  
}

## 3
## Read the activity labels and transform then in the dataset
## This step replaces the id for activities that are no descriptives (1,2,3,4,5,6)
## for ones more descriptives (WALKING,SITTING, etc.)
transformActivityFactor <- function(dataset){
  labels <- read.delim(file='UCI HAR Dataset/activity_labels.txt',
                         header=FALSE,
                         sep=' ',
                         col.names=c('id','name'))  
  dataset[['ActivityID']] <- labels$name[dataset[['ActivityID']]]
  dataset  
}

## 4
## Rename some variable names to make it more descriptive
renameColumns <- function(dataset){
  fields <- names(dataset)
  
  fields <- lapply(fields,function(s){
    fLetter <- substr(s,1,1)
    size <- nchar(s)
    if(fLetter == 'f'){      
      s <- paste(substr(s,2,size),'Frequency_Domain')
    }else if(fLetter == 't'){
      s <- paste(substr(s,2,size),'Time_Domain')
    }
    s
  })
  fields <- sub('Acc',' Acceleration',fields)
  fields <- sub('Gyro',' Gyroscope',fields)
  fields <- sub('BodyBody','Body',fields)
  fields <- sub('Mag',' Magnitude',fields)
  fields <- sub('\\.\\.\\.',' Axis ',fields)
  fields <- sub('\\.\\.','',fields)
  fields <- sub('Jerk','  Jerk',fields)
  fields <- sub('.mean',' Mean',fields)
  fields <- sub('.std',' Standard Deviation',fields)
  fields <- sub('  ',' ',fields)
  fields <- gsub(' ','_',fields)
  names(dataset) <- fields
  dataset
}

## 5
## Generate the sumarized data of the dataset
## Melted the data breaking the variables by SubjectID and ActivityID
## Then grouped the variables by SubjectID and ActivityID, applying the Mean function
## At the end, the variables receive a new name to show that is a new Average value
library(reshape2)
generateSumarizationBySubjectAndActivity <- function(dataset){
  meltData <- melt(tidyData,id=c('SubjectID','ActivityID'))
  sumarizedData <- dcast(meltData,SubjectID + ActivityID ~ variable,mean)  
  names(sumarizedData) <- lapply(names(sumarizedData),function(s){ paste('Average',s,sep='_')})
  names(sumarizedData)[1] <- 'SubjectID'
  names(sumarizedData)[2] <- 'ActivityID'
  sumarizedData
}

#fullData <- readMergedDataSets()
#almostTidyData <- extractMeanAndStd(fullData)
tidyData <- transformActivityFactor(almostTidyData)
tidyData <- renameColumns(tidyData)
sumarizedData <- generateSumarizationBySubjectAndActivity(tidyData)
write.table(sumarizedData,file='sumarizedTidyData.txt')
