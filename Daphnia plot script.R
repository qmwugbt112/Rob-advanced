###Script for plotting graph of Daphnia head width against body length

plot(Body.length.mm,Head.width.mm,type="n", xlab="Body length (mm)", ylab="Head width (mm)",cex.lab=1.2,font.lab=2)  ##Plots graph axes without any data points plus axis labels etc.

points(Body.length.mm[Predator=="None"],Head.width.mm[Predator=="None"],col="darkgreen")  ##Plots in data for Daphnia with no predator
points(Body.length.mm[Predator=="Buenoa"],Head.width.mm[Predator=="Buenoa"],col="darkred")  ##Data points for Daphnia reared with Buenoa
points(Body.length.mm[Predator=="Chaoborus"],Head.width.mm[Predator=="Chaoborus"],col="steelblue") ##Data points for Daphnia reared with Chaoborus

abline(0.180,0.423,col="darkgreen")  ##Add fitted lines
abline(0.180-0.094,0.423+0.468,col="darkred")
abline(0.180-0.073,0.423+0.052,col="steelblue")

legend("topleft",bty="n",expression("No predator",italic('Buenoa'),italic("Chaoborus")),fill=c("darkgreen","darkred","steelblue"))