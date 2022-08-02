shift<-c(1.10,1.50,1.75,2)
MDRL_V<-c(137.5,10,4,2)
MDRL_0.75<-c(77,5,2,1)
MDRL_0.50<-c(61,2,1,1)
MDRL_0.25<-c(42,1,1,1)

plot(shift,MDRL,xlab = expression(paste(delta)),ylab=expression("MDRL"),col="violetred2",lwd=2,lty=2,type = "l")
lines(shift,x2,col="springgreen3",lwd=2,lty=3)
lines(shift,x3,col="royalblue",lwd=2,lty=4)
lines(shift,x4,col="brown4",lwd=2,lty=5)
legend(1.55,135, c(expression('V'),
                   expression('IMEWMA'*(paste(lambda,"=0.75"))),
                   expression('IMEWMA'*(paste(lambda,"=0.50"))),
                   expression('IMEWMA'*(paste(lambda,"=0.25")))),
       col=c("violetred2","springgreen3","royalblue", "brown4"),
       lwd=c(2,2,2,2),lty=c(2,3,4,5),
       bty = "n", cex = 1)