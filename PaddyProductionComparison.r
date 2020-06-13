
# This R code section is for get a comparison graphs of harvested hectares count and average yield received 
#from a hectair in 2012 paddy production in Sri Lanka

Seasons = read.csv("paddy_production_in_2012.csv")

par(mfrow=c(1,2))

barplot(Seasons$Harvested.000.Ha,
        main = "Harvested hectares",
        xlab = "Acres",
        ylab = "2012 Seasons",
        names.arg = c("Yala", "Maha"),
        col = rainbow(2),
        horiz = TRUE)

barplot(Seasons$Average.Yield.Kg.Ha,
        main = "Average Yield per hectares",
        xlab = "Average.Yield",
        ylab = "2012 Seasons",
        names.arg = c("Yala", "Maha"),
        col = rainbow(2),
        horiz = TRUE)

