Getting and Cleaning Data - Course Project
==========================================

This repository contains two scripts: `run_analysis.R` and `helper_functions.R`. It also contains the original assignment in `assignment.md`.

run_analysis.R
--------------

This script defines a function `run_analysis()` that returns the tidy dataset specified in the fifth step of the [assignment](assignment.md). It calls function `merge_files()`, defined in `helper_functions.R`, several times. To run the analysis:

    source("run_analysis.R")
    run_analysis()

The analysis does not include downloading and unzipping the data. This preparatory step must be done before running the analysis. The analysis assumes that the data has been unzipped in the working directory and that it has not been renamed.

helper_functions.R
------------------

This script defines one function to read tables from two files and bind them by rows (a repetitive task during the analysis) and a function to download and unzip the data to analyse.

If you haven't downloaded the original data, you may do so running:

    source("helper_functions.R")
    download_unzip()

`download_unzip()` will create a `subdirectory` with the original zip file in it and it will decompress the zip file in the working directory. The functions returns the date when the data was downloaded.

This projected is licensed under the terms of the MIT license.
