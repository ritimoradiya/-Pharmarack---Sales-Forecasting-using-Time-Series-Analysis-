#MSE code
#Using OG covid data
data1 = Data_for_Growth_Forecast_for_NMIMS_Vidhi
t.data = ts(data1$RESPIRATORY,start = c(2018,1), end = c(2023,8),frequency = 12)
train=ts(data1$RESPIRATORY,start = c(2018,1),end = c(2022,6),frequency = 12)
test=tail(t.data,13)
library(forecast)
ht1 = HoltWinters(train, seasonal = "multiplicative")
f = forecast(ht1, h = 14);f
plot(f,ylab = "sales(units)", main = "Anti-Diabetic-Forecasting",xlab = "Years")
legend("topleft",legend = c("Training data forecast", "Test data"),lty = 1, col = c("blue","red"),cex = 1,x.intersp =  0.2,y.intersp = 1,xjust = 1,yjust = 1)
lines(test, col = "red")
ht1$SSE
summary(f)#257.5099

#Using forecasted covid data
train1 = ts(data$Train, start = c(2018,1), end = c(2022,6),frequency = 12)
test1 = tail(data$Train,13)
t1 = ts(test1,start = c(2022,7),frequency = 12)
ht2 = HoltWinters(train1, seasonal = "multiplicative")
f2 = forecast(ht2, h = 14)
plot(f2)

lines(t1, col = "red")
summary(f2) #110.8005

#Covid forecasting 
data = Final_Covid
t.pre = ts(data$Before,start = c(2018,1),c(2020,2),frequency = 12)
library(forecast)
h = HoltWinters(t.pre, seasonal = "additive")
f.covid = forecast(h,17);f.covid
plot(f.covid, xlim = c(2018,2024), ylim = c(500,1500),xlab = "Years", ylab = "Sales(units)" )
legend("topleft", legend = c("Forecasted covid sales", "Actual covid sales"), 
       col = c("blue","red"),lty = 1,cex = 1,x.intersp =  0.2,
       y.intersp = 1,xjust = 1,yjust = 1)
t.covid = ts(data$Covid,start = c(2020,3), frequency = 12)
lines(t.covid, col = "red")
t.after = ts(data$After,start = c(2021,8),end = c(2023,8), frequency = 12)
lines(t.after)

#train-test using forecasted covid-sales
data.c = Final_Covid_1_
t.data = ts(data.c$Gastro,start = c(2018,1), end = c(2023,8),frequency = 12)
train = ts(data.c$Pain,start = c(2018,1),end = c(2022,6),frequency = 12)
test=ts(data.c$cardiac.t,start = c(2022,7),frequency = 12)
library(forecast)
ht1 = HoltWinters(train, seasonal = "additive")
f = forecast(ht1, h = 14);f
plot(f,ylab = "sales(units)", main = "Pain-Forecasting",xlab = "Years")
legend("topleft",legend = c("Training data forecast", "Test data"),lty = 1, col = c("blue","red"),cex = 1,x.intersp =  0.2,y.intersp = 1,xjust = 1,yjust = 1)
lines(test, col = "red")
summary(f)#41.85777

#Forecasting after aug 23
t.forecast = ts(data$Train, start = c(2018,1), frequency = 12)
h1 = HoltWinters(t.forecast, seasonal = "multiplicative")
f1 = forecast(h1, h = 12)
t.f = ts(data1$forecast, start = c(2023,9), frequency = 12)
lines(t.f,col = "green")
plot(f1,ylim = c(1000,3000))
lines(t.covid, col = "red")
summary(f1)