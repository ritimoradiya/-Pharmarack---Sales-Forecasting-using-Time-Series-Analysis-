data = Data_for_Growth_Forecast_for_NMIMS_Vidhi
t.data = ts(data$sales,start = c(2018,1), frequency = 12)
plot(t.data, type = "l", ylab = "Sales(units)", main = "Cardiac-sales")

#Stationary
library(tseries)
adf.test(data$RESPIRATORY, alternative  = "stationary")
install.packages("forecast")
?adf.test()
decompose(t.data, type = "multiplicative")
#trend
install.packages("Kendall")
library(Kendall)
MannKendall(data$RESPIRATORY)

#Modelling
library(forecast)
ht = HoltWinters(t.data, seasonal = "multiplicative")
f = forecast(ht, h = 12);f
plot(f)

#if seasonality
auto.arima(t.data)
acf(t.data)
pacf(t.data)
d = diff(t.data)
d1 = diff(d)
acf(d)
pacf(d)
a = arima(t.data, order = c(1,1,2))
f = forecast(a, h = 12)
plot(f)
data = Data_for_Growth_Forecast_for_NMIMS_Bifurcated
t.data = ts(data$`ANTI-ASTHMA AND COPD PRODUCTS`)
install.packages("seastests")
library(seastests)
isSeasonal(d, test = "combined", freq = 12)
?isSeasonal()
library(forecast)
td.data= diff(t.data)
ht = holt(t.data)
f = forecast(ht, h = 10);f
plot(f)
auto.arima(t.data, seasonal = T)
acf(t.data)
fit_arima_cc = auto.arima(ts_cc, seasonal = TRUE)
print(summary(fit_arima_cc))
checkresiduals(fit_arima_cc)

forecast_cc = forecast(ts_cc, h = 12)
plot(forecast_cc, type = "l")
print(summary(forecast_cc))

data = Data_for_Growth_Forecast_for_NMIMS_Vidhi
t.data = ts(data$`ANTI-INFECTIVES`,start = c(2018,1), end = c(2023,8),frequency = 12)
train=ts(data$`ANTI-INFECTIVES`,start = c(2018,1),end = c(2022,6),frequency = 12)
test=tail(t.data,13)
library(forecast)
ht1 = HoltWinters(train, seasonal = "multiplicative")
f = forecast(ht1, h = 14);f
plot(f,ylab = "sales(units)", main = "Anti-Infectives-Forecasting")
legend("topleft",legend = c("Training data forecast", "Test data"),lty = 1, col = c("blue","red"),cex = 1,x.intersp =  0.2,y.intersp = 1,xjust = 1,yjust = 1)
lines(test, col = "red")

data1 = w_wo_covid_sheets
t.pre = ts(data1$Before,start = c(2018,1),c(2020,2),frequency = 12)
h = HoltWinters(t.pre, seasonal = "additive")
f.covid = forecast(h,17)
plot(f.covid, xlim = c(2018,2024), ylim = c(1000,3000))
t.covid = ts(data1$Covid,start = c(2020,3), frequency = 12)
lines(t.covid, col = "red")
t.after = ts(data1$After,start = c(2021,8),end = c(2023,8), frequency = 12)
lines(t.after)
t.forecast = ts(data1$Train, start = c(2018,1), frequency = 12)
h1 = HoltWinters(t.forecast, seasonal = "multiplicative")
f1 = forecast(h1, h = 12)
t.f = ts(data1$forecast, start = c(2023,9), frequency = 12)
lines(t.f,col = "green")
plot(f1,ylim = c(1000,3000))
lines(t.covid, col = "red")
