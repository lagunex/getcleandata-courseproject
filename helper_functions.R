download_unzip <- function() {
    if(!file.exists("data")) {
        dir.create("data")
    }

    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="data/FUCI_HAR_Dataset.zip", method="curl")
    date_downloaded <- date()

    unzip("data/FUCI_HAR_Dataset.zip")
    date_downloaded
}

merge_files <- function(train_file, test_file, col_classes) {
    train_data <- read.table(train_file, colClasses = col_classes)
    test_data <- read.table(test_file, colClasses = col_classes)
    rbind(train_data, test_data)
}
