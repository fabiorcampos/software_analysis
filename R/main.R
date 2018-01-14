### Load Libraries
library(dplyr)
library(tidyr)

### Load data
setwd("~/MEGA/SOFTEX/PREDICT/R/predict_2017/database")
df = read.csv("dataset.csv", header = TRUE, sep = ",", dec = ",")

### Classifications
#countries = c("BR", "CA", "CH", "KR", "FI", "IR", "UK", "US", "DE")
#sector = c("582, 62, 631, 951", "5821", "5829", "6201", "6202", "6203", "6209",
#           "6311", "6312", "9511", "9512", "261-264, 582, 61, 62, 631, 951")

### EMP
emp_df = filter(df, Variable.code == "EMP", 
                Country.code %in% c("BR", "CA", "CN", "KR", "FI", "IR", "UK", "US", "DE"),
                Classification.code %in% c("582, 62, 631, 951", "5821", "5829", "6201", "6202", "6203", "6209",
                                           "6311", "6312", "9511", "9512", "261-264, 582, 61, 62, 631, 951"))

write.csv(emp_df, file = "emp.csv", sep = ",", dec = ",")

### BERD
berd_df = filter(df, Variable.code == "EMP", 
                Country.code %in% c("BR", "CA", "CN", "KR", "FI", "IR", "UK", "US", "DE"),
                Classification.code %in% c("582, 62, 631, 951", "5821", "5829", "6201", "6202", "6203", "6209",
                                           "6311", "6312", "9511", "9512", "261-264, 582, 61, 62, 631, 951"))

write.csv(berd_df, file = "emp.csv", sep = ",", dec = ",")

### PRODEMP
prod_df = filter(df, Variable.code == "PRODEMP", 
                 Country.code %in% c("BR", "CA", "CN", "KR", "FI", "IR", "UK", "US", "DE"),
                 Classification.code %in% c("582, 62, 631, 951", "5821", "5829", "6201", "6202", "6203", "6209",
                                            "6311", "6312", "9511", "9512", "261-264, 582, 61, 62, 631, 951"))

write.csv(prod_df, file = "prod1.csv", sep = ",", dec = ",")

### GVA
gva_df = filter(df, Variable.code == "GVA", 
                 Country.code %in% c("BR", "CA", "CN", "KR", "FI", "IR", "UK", "US", "DE"),
                 Classification.code %in% c("582, 62, 631, 951", "5821", "5829", "6201", "6202", "6203", "6209",
                                            "6311", "6312", "9511", "9512", "261-264, 582, 61, 62, 631, 951"))

write.csv(gva_df, file = "gva.csv", sep = ",", dec = ",")


