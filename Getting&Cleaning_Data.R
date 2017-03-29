# load the dplyr package
library(dplyr)

# feature file:

# getting rid of the index column
features <- read.table("UCI HAR Dataset/features.txt", header = FALSE, sep = " ", row.names = 1)

#change the index name to variable
names(features) <- "Variable"

#read the x_test data

x_test <- read.fwf("UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "", widths = rep(16, 561))

# read the x_train data

x_train <- read.fwf("UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "", widths = rep(16,561))

# read the y_test data

y_test <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)

# read the y_training data

y_training <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)

# read the activity label file

activity <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = " ")

#change the column name of y_test and y_training to "activity"

names(y_test) = "activity"
names(y_training) = "activity"

##change the names of x_test  and x_train to the names in the file features.txt

for (i in 1:561) {names(x_test)[i] = as.character(features[i,1])}


for (i in 1:561) {names(x_train)[i] = as.character(features[i,1])}

##change the names of y_test  and y_training to the names in the file activity_labels.txt

for (i in 1:6) y_test[y_test == i] <- as.character(activity[i,2])

for (i in 1:6) y_training[y_training == i] <- as.character(activity[i,2])


# merge x_train with y_train and x_test with y_test

training <- cbind(x_train, y_training)
test <- cbind(x_test, y_test)

# merge the two data sets

merged_data <- rbind(test, training)

# subseting only the columns containing mean and standard deviation (and of course, the activity).
# I am also excluding the "meanfrequency()" column.

refined_data <- merged_data[,grep("mean[()]|std|activity", names(merged_data))]

# finding the mean of every column/variable

variable_mean <- refined_data %>% group_by(activity) %>% summarize_each(funs(mean))

# write the new tidy data set into a txt file

write.table(variable_mean, file = "tidy_data.txt", row.names = FALSE)

