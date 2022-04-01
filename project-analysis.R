

# load packages -----------------------------------------------------------

library(tidyverse)


# read_data ---------------------------------------------------------------

# the script split-raw-data.R will read the raw 600+ MB data and split it
# into two files, each smaller than the 500 MB limit for RStudio Cloud
#
# the script below assumes you have already split the data into two parts,
# and the two parts are in a directory named data/

source("read-data-parts.R")
brfss_data <- read_data_parts()


# filter data into subsets ------------------------------------------------


