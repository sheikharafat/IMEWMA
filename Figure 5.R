shift<-c(1.10,1.50,1.75,2)
ARL_V<-c(202.79,14.58,5.86,3.39)
ARL_0.75<-c(109.05,7.45,3.24,1.94)
ARL_0.50<-c(88.64,4.26,1.69,1.15)
ARL_0.25<-c(61.70,1,1,1)
par(mar=c(4,4,1.75,1.75))
plot(shift,ARL,xlab = expression(paste(delta)),ylab=expression("ARL"),col="violetred2",lwd=2,lty=2,type = "l")
lines(shift,x2,col="springgreen3",lwd=2,lty=3)
lines(shift,x3,col="royalblue",lwd=2,lty=4)
lines(shift,x4,col="brown4",lwd=2,lty=5)
legend(1.5,200, c(expression('V'),
                  expression('IMEWMA'*( paste(lambda,"=0.75"))),
                  expression('IMEWMA'*( paste(lambda,"=0.50"))),
                  expression('IMEWMA'*( paste(lambda,"=0.25")))),
       col=c("violetred2","springgreen3","royalblue", "brown4"),
       lwd=c(2,2,2,2),lty=c(2,3,4,5),
       bty = "n", cex = 1)
