
# This R code section is for get a comparison graphs of harvested hectares count and average yield received 
#from a hectair in 2012 paddy production in Sri Lanka

#Below csv formatted data file need to available as "paddy_production_in_2012.csv" to run this R code segment 

#Season,Sown 000 Acres,Sown 000 Ha,Harvested 000 Acres,Harvested 000 Ha.,Average Yield Bushels/Acre,Average Yield Kg/Ha,Production 000 Bushels,Production 000 Mt.
#2012 Maha,1734,702,1692,684,86.2,4444,130212,2717
#2012 Yala,901,365,754,305,80.39,4145,54107,1129



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

