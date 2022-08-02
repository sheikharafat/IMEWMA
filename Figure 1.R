par(mar=c(4,4,1.75,1.75))
N = 10000 #The number of samples from the Inverse Maxwell distribution             
rIND=
  function (N=10000, sigma){
    rand.samples = rep(NA,N)#Variable to store the samples from the IMD distribution
    for(i in 1:N){
      rand.samples[i] = 1/(sigma*sqrt(2*rgamma(1,3/2,1)))
    }
    rand.samples
  }
plot(density(rIND(N, .02)),
     main= " ",
     xlab = expression("R"),
     xlim = c(5,90 ),
     ylim = c(0, .11), col="violetred2",lwd=2,lty=2)
lines(density(rIND(N,.04)),col="springgreen3",lwd=2,lty=3)
lines(density(rIND(N,.06)),col="royalblue",lwd=2,lty=5)

legend(64,.10, c(expression(paste(sigma," = 0.02")),
                 expression(paste(sigma," = 0.04")),
                 expression(paste(sigma," = 0.06"))),
       col=c("violetred2","springgreen3","royalblue"),
       lwd=c(2,2,2),lty=c(2,3,5),cex=1,bty = "n")
      