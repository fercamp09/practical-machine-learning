# Download files
# download.file("https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv", destfile = "training.csv")
# download.file("https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv", destfile = "test.csv")
library(caret)
library(dplyr)

training_data <- read.csv("training.csv", na.strings = "?", sep = ",")  
test_file <- read.csv("test.csv", na.strings = "?", sep = ",")  

training_filtered <- bind_cols(training_data[8:11], training_data[37:49], training_data["classe"])
test_filtered <- bind_cols(test_file[8:11], test_file[37:49])

modnb = train(classe ~ . , data= training_filtered, method="rf")
