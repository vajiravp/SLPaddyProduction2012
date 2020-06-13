
# This R code section is to get some comparison graphs of harvested hectares count and average yield received 
# during 2012 paddy seasons in Sri Lanka

#A csv formatted data file need to available as "paddy_production_in_2012.csv" containing below data to run this R code segment 

#Season,Sown 000 Acres,Sown 000 Ha,Harvested 000 Acres,Harvested 000 Ha.,Average Yield Bushels/Acre,Average Yield Kg/Ha,Production 000 Bushels,Production 000 Mt.
#2012 Maha,1734,702,1692,684,86.2,4444,130212,2717
#2012 Yala,901,365,754,305,80.39,4145,54107,1129


PaddySeason2012 = read.csv("paddy_production_in_2012.csv")

par(mfrow=c(1,3))

#----------------------Bar plots--------------------------------------

#Number of harvested hectares
barplot(PaddySeason2012$Harvested.000.Ha.,
        main = "Number of harvested hectares",
        xlab = "Harvested hectares (thousands)",
        ylab = "2012 Paddy Seasons",
        names.arg = c("Maha", "Yala"),
        col = rainbow(2))

#Total rice production (Mt)
barplot(PaddySeason2012$Production.000.Mt,
        main = "Total rice production (Mt)",
        ylab = "2012 Paddy Seasons",
        xlab = "Rice metric ton",
        names.arg = c("Maha", "Yala"),
        col = rainbow(2))

#Average Yield per hectare (Kg)
barplot(PaddySeason2012$Average.Yield.Kg.Ha,
        main = "Average Yield per hectare (Kg)",
        xlab = "Rice production per hectare (Kg)",
        ylab = "2012 Paddy Seasons",
        names.arg = c("Maha", "Yala"),
        col = rainbow(2))


#--------------------Ratio calculations---------------------------

#Percentage of Yala harvested hectare count compared to Maha season
YalaHarvestedPrecentage = PaddySeason2012[2,][5]/PaddySeason2012[1,][5]

#Percentage of Yala rice production compared to Maha season
YalaRiceProduction = PaddySeason2012[2,][9]/PaddySeason2012[1,][9]

#Percentage of Yala yield per hectare count compared to Maha season
YalaYieldPerHectarePrecentage = PaddySeason2012[2,][7]/PaddySeason2012[1,][7]


