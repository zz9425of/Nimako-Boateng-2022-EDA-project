
library(dplyr)
library(readr)

raw_data <- 
  read_csv("data/Behavioral_Risk_Factor_Surveillance_System__BRFSS__Prevalence_Data__2011_to_present_.csv")

part_1 <-
  raw_data %>% 
  slice_head(prop = .5)

part_2 <-
  raw_data %>% 
  slice_tail(n = nrow(raw_data) - nrow(part_1))

write_csv(part_1, "data/brfss_part_1.csv")
write_csv(part_2, "data/brfss_part_2.csv")
