#install libraries
library(readr)

#set up variables
df <- crime_and_unemployment_by_state
df$Total_Thefts <- df$`property total`

#create histogram
png("plots/histogram.png")
hist(df$Total_Thefts,
     main="Thefts Across The United States From 1976 to 2014",
     xlab="Total Thefts",
     col="lightblue")
dev.off()

#create plot
png("plots/scatter.png")
plot(df$unemployment,
     df$Total_Thefts, 
     main="unemployment vs Theft comparison",
     #sub="Is there a correlation between the amount of thefts and the unemployment rate across the United States between 1976 to 2014?",
     xlab="Unemployment Percentage",
     ylab="Total Thefts")
abline(lm(Total_Thefts ~ unemployment, data = df), col = "red")
dev.off()

#run test

cor.test(df$Total_Thefts,df$unemployment, method = "pearson")
