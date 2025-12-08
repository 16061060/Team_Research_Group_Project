df <- crime_and_unemployment_by_state
df$Total_Thefts <- df$`property total`

plot(df$unemployment,
     df$Total_Thefts, 
     main="Unemployment and theft comparision", 
     sub="Is there a correlation between the amount of thefts and the unemployment rate across the United States between 1976 to 2014?",
     xlab="Unemployment Rate",
     ylab="Total Thefts")
abline(lm(Total_Thefts ~ unemployment, data = df), col = "red")

cor.test(df$Total_Thefts,df$unemployment, method = "pearson")