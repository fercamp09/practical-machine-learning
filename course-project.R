# Download files
# download.file("https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv", destfile = "training.csv")
# download.file("https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv", destfile = "test.csv")

training_data <- read.csv("../data/household_power_consumption.txt", na.strings = "?", sep = ";")  
test_file <- read.csv("../data/household_power_consumption.txt", na.strings = "?", sep = ";")  