require("jsonlite")
require("RCurl")
# Change the USER and PASS below to be your UTEid
Titanic_df <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from TITANIC"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDBF15DV.usuniversi01134.oraclecloud.internal', USER='cs329e_sm44585', PASS='orcl_sm44585', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE), ))
Titanic_df
summary(Titanic_df)
head(Titanic_df)
