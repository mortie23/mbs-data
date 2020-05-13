# Author: Christopher Mortimer
# DAte:   2020-05-13
# Desc:   Read in some MBS data an do time series analysis
# Source: https://blog.revolutionanalytics.com/2017/12/r-in-the-windows-subsystem-for-linux.html

# Read in the MBS data to a dataframe
mbsData <- read.csv(file = './mbs-data-2020-05-13.csv')
head(mbsData)

# based on variable values
mbsData_M11 <- mbsData[ which(mbsData$group=='M11 Allied Health Services for Indigenous People who have had a Health Check'), ]

library(ggplot2)
# Basic line plot with points
ggplot(data=mbsData_M11, aes(x=month, y=services, group=1)) +
  geom_line()+
  geom_point()
