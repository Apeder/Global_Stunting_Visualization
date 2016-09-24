regionldat <- read.csv("regionalmalnutrition.csv")
regionldat <- na.omit(regionldat)

library(plyr)
regionaldat <- ddply(regionldat, .(WHO.region, Year), summarise, 
      Total_rate = mean(total_rate))

regionaldat$WHO.region <- as.factor(regionaldat$WHO.region)

library(ggplot2)
g <- ggplot(regionaldat, aes(x=Year, y=Total_rate))
g + geom_point(aes(color=WHO.region)) + geom_smooth()



