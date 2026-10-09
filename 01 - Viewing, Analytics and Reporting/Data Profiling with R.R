#Install Package to Read Dataset from Github
install.packages("readr")
library(readr)
url <- "https://raw.githubusercontent.com/jrafa1607/DataScience-ML-AI/main/-%20Datasets/census.csv"
dados <- read_csv(url)

#EDA with Skimr
install.packages("skimr")
library(skimr)
skim(dados)

#EDA with DataExplorer
install.packages("DataExplorer")
library(DataExplorer)
introduce(dados)
plot_intro(dados)
create_report(dados)

#EDA with SmartEDA
install.packages("SmartEDA")
library(SmartEDA)
ExpReport(dados, op_file = "ReportDataProf.html")