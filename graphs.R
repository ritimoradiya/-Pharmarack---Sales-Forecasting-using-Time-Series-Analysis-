data = Final_Covid
OG = ts(data$Train, start = c(2018,1), end = c(2022,6), frequency = 12)
plot(OG,xlim = c(2018,2024),ylim = c(500,1800),col = "black",lwd = 2,main = "Respiratory", ylab = "sales (units)")
covid = ts(data$Covid, start = c(2020,3), frequency = 12)
lines(covid, col = "purple", lwd = 3)
ct = ts(data$Respiratory.ct, start = c(2022,6), frequency = 12)
tt = ts(data$Respiratory.tt, start = c(2022,6), frequency = 12)
lines(ct, col = "green", lwd = 3)
lines(tt, col = "red", lwd = 2)
t.data = ts(data$Train,start = c(2018,1), frequency = 12)
test = ts(data$test, start = c(2022,6), frequency = 12)
lines(test, col = "blue", lwd = 2)
legend("topleft", legend = c("Actual covid sales","Test data","Forecasted (actual covid sales)","forecasted (covid forecast sales)"),
       col = c("purple","blue","red","green"),lty = 1,x.intersp = 0.01,y.intersp = 0.5)

data = Data_for_Growth_Forecast_for_NMIMS_Vidhi
c = ts(data$CARDIAC, start = c(2018,1), frequency = 12)
ai = ts(data$`ANTI-INFECTIVES`, start = c(2018,1), frequency = 12)
r = ts(data$RESPIRATORY, start = c(2018,1), frequency = 12)
ad = ts(data$`ANTI DIABETIC`, start = c(2018,1), frequency = 12)
v = ts(data$`VITAMINS / MINERALS / NUTRIENTS`, start = c(2018,1), frequency = 12)
g = ts(data$`GASTRO INTESTINAL`, start = c(2018,1), frequency = 12)
p = ts(data$`PAIN / ANALGESICS`, start = c(2018,1), frequency = 12)
plot(c, type = "l", ylim = c(600,3000), col = "darkblue", lwd = 2, ylab = "Sales (units)")
lines(ai, col = "red", lwd = 2)
lines(r, col = "green", lwd = 2)
lines(ad, col = "blue", lwd = 2)
lines(v, col = "darkgreen", lwd = 2)
lines(g, col = "purple", lwd = 2)
lines(p, col = "brown", lwd = 2)
legend("topleft", legend = c("Cardiac", "Anti-Infectives","Respiratory","Anti-Diabetic",
       "Vitamins", "Gastro","Pain"), col = c("darkblue","red","green","blue","darkgreen","purple","brown"),
      lty = 1,lwd = 2,x.intersp = 0.01,y.intersp = 0.5)
                                                                   
