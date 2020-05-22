library('tseries')
setwd("~/Desktop/HKU/2019-2020 Spring/FINA 4354/Final Essay/dataset")

## HSI data ##
hsi.data <- read.csv("hsi.csv", header = T, sep = ",")
monthly.price <- hsi.data$Adj.Close
log.monthly.price <- log(monthly.price)
monthly.return <- diff(log.monthly.price, 1)
hist(monthly.return, prob = T, main = "Histogram of HSI Monthly Return", 
     xlab = "Monthly Return", ylab = "Density")
lines(density(monthly.return), col = 'blue')
qqnorm(monthly.return)
qqline(monthly.return, col = 'blue')
shapiro.test(monthly.return)

## S&P 500 data ## 
sp500.data <- read.csv("sp500.csv", header = T, sep = ",")
sp.monthly.price <- sp500.data$Adj.Close
sp.log.monthly.price <- log(sp.monthly.price)
sp.monthly.return <- diff(sp.monthly.price, 1)
hist(sp.monthly.return, prob = T, main = "Histogram of S&P 500 Monthly Return", 
     xlab = "Monthly Return", ylab = "Density")
lines(density(sp.monthly.return), col = 'blue')
qqnorm(sp.monthly.return)
qqline(sp.monthly.return, col = 'blue')
shapiro.test(sp.monthly.return)
