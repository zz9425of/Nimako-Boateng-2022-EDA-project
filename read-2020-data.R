
# downloaded the SAS Transport data file from here:
# https://www.cdc.gov/brfss/annual_data/annual_2020.html

unzip("data/LLCP2020XPT.zip", exdir = "data")
llcp2020 <- haven::read_xpt("data/LLCP2020.XPT")

library(tidyverse)

llcp2020 %>% 
  transmute(
   bmi5 = `_BMI5`,
   bmi5cat = factor(`_BMI5CAT`),
   diabete4 = factor(DIABETE4),
   age_g = factor(`_AGE_G`)
  ) %>% 
  write_csv("data/llcp_2020_diab_bmi_age.csv")
