## deja vu from yesterday!

library(dplyr)
library(here)
library(readr)

## create a data frame of your installed packages

allPackageDF <- installed.packages() %>%
  as.data.frame()

myPackageDF <- allPackageDF %>%
  select("Package","LibPath","Version","Priority","Built")

# names(myPackageDF)
## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like

write_csv(myPackageDF, here("data","install-packages.csv"))

## when this script works, stage & commit it and the csv file
## PUSH!
