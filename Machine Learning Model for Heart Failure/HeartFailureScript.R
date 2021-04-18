


library(readr)
library(rpart)

dataDeath <- read_csv("Desktop/Heart Failure/heart_failure_clinical_records_dataset.csv")
dataDeath$DEATH_EVENT[dataDeath$DEATH_EVENT == 1 ] = "Yes"
dataDeath$DEATH_EVENT[dataDeath$DEATH_EVENT == 0 ] = "No"
dataDeath$DEATH_EVENT

tree <- rpart(DEATH_EVENT ~ age+anaemia+creatinine_phosphokinase+diabetes+high_blood_pressure+platelets+serum_creatinine+serum_sodium+sex+smoking+time,data=dataDeath)
library(rpart.plot)
library(rattle)
library(RColorBrewer)
rpart.plot(tree)
CrossValidation::cross_validate(dataDeath, tree, 2, 0.8)
fancyRpartPlot(tree)