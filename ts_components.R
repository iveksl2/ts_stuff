#From: https://www.otexts.org/fpp/6/1

library(fpp)

par(mfrow=c(2,2))
plot(hsales  , xlab = "Year", ylab = "Monthly housing sales (millions)")
plot(ustreas , xlab = "Day" , ylab = "US treasury bill contracts")
plot(elec    , xlab = "Year", ylab = "Australian monthly electricity production")
plot(diff(dj), xlab = "Day" , ylab = "Daily change in Dow Jones index")


fit <- stats::stl(elecequip, s.window=5)

par(mfrow = c(1, 1))
plot(elecequip, col="gray",
      main="Electrical equipment manufacturing",
       ylab="New orders index", xlab="")
lines(fit$time.series[,2],col="red",ylab="Trend")

plot(fit)

monthplot(fit$time.series[,"seasonal"], main="", ylab="Seasonal")

# seasonally adjusted. I.E. Unemployment figures due to shocks or secular trends 
plot(elecequip, col="grey",
      main="Electrical equipment manufacturing",
        xlab="", ylab="New orders index")
lines(seasadj(fit),col="red",ylab="Seasonally adjusted")

