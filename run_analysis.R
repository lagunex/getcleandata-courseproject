## Merges the data from the original data source and creates a tidy dataset
## containing the mean of the mean and standard deviation measures, grouped
## by activity and subject
run_analysis <- function() {
    source("helper_functions.R") # to load the function merge_files

    if(!require("dplyr")) {
        install.package("dplyr")
    }

    # step 1 for x_data
    x_data <- merge_files("UCI HAR Dataset/train/X_train.txt",
                          "UCI HAR Dataset/test/X_test.txt", "numeric")
    all_variables = read.table("UCI HAR Dataset/features.txt")

    # keep only the measures for mean and standard deviation (step 2)
    valid_columns <- grep("-mean\\(\\)|-std\\(\\)",all_variables[,2])
    x_data <- select(x_data, valid_columns)
    variable_names <- all_variables[valid_columns,2]

    # remove special characters from the variable names
    # that may have conflict later when naming them (step 4)
    variable_names <- gsub("-","_",variable_names)
    variable_names <- sub("\\(\\)","",variable_names)

    # typo in original features.txt
    variable_names <- sub("BodyBody","Body",variable_names)
    names(x_data) <- variable_names

    # step 1 for y_data (activities)
    y_data <- merge_files("UCI HAR Dataset/train/y_train.txt",
                          "UCI HAR Dataset/test/y_test.txt", "factor")
    names(y_data) <- "activity_id"
    y_data$column_id <- 1:nrow(y_data) # to remember original order
    activity_names <- read.table("UCI HAR Dataset/activity_labels.txt",
                                 col.names = c("id", "activity"))

    # this operation modifies the order of the rows in y_data
    y_data <- merge(y_data, activity_names, by.x = "activity_id", by.y = "id")

    # restore the original order messed up by "merge" using column_id
    # and keep only the descriptive activity names (step 3)
    y_data <- y_data %>% arrange(column_id) %>% select(activity)

    # step 1 for subjects
    subjects <- merge_files("UCI HAR Dataset/train/subject_train.txt",
                            "UCI HAR Dataset/test/subject_test.txt", "factor")
    names(subjects) <- "subject"

    dataset <- cbind(subjects, y_data, x_data)

    # step 5
    data_grouped <- dataset %>% group_by(activity, subject) %>% summarise_each(funs(mean))
    tbl_df(data_grouped)
}
