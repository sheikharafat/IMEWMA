set.seed(254)
###Building control limits
n=6
t=1:20
lamda=0.25
L=3.031
x1=2/(3*n)
x2=lamda/(2-lamda)
x3=(1-(1-lamda)^t)
W1=1-(L*sqrt(x1*x2*x3))
W1

W2=1+(L*sqrt(x1*x2*x3))
W2
####constructing function to generate random numbers
N = 6 #The number of samples from the Inverse Maxwell distribution             
rIND=
  function (N, sigma){
    rand.samples = rep(NA,N)#Variable to store the samples from the IMD distribution
    for(i in 1:N){
      rand.samples[i] = 1/(sigma*sqrt(2*rgamma(1,3/2,1)))
    }
    rand.samples
  }

r<- matrix(, nrow = 6, ncol=20)
s=z=c()
lambda=0.25
for(i in 1:20){
  r[,i]<-rIND(N,0.02)
  s[i]<-((3*5)^-1)*sum(r[,i]^-2)
  w0<-mean(s)
  if(i==1){
    z[i] <- lambda*s[i]+(1-lambda)*w0
  }else {
    z[i] <- lambda*s[i]+(1-lambda)*z[i-1]
  }
}




#plotting statistic
ZIM1=z[1:10]
ZIM2=z[11:20]
ZIM=c(ZIM1,1.25*ZIM2)

#EWMA control limits

UCL=W2*w0
CL=w0
LCL=W1*w0

#EWMA control chart
par(mar=c(4,4,1.75,1.75))
xtick<-c(3,5,7,10,13,15,17,20)
plot(ZIM,type ="b", ylim=c(0,.0013),xlim=c(1,20),ylab = "Plotting Statistic",xlab = "Sample number",col="springgreen3",pch=15,cex=0.75)
abline(h =w0 , col = "red", lty = 1, lwd = 1)
lines(LCL,col="green",lwd=2,lty=2)
lines(UCL,col="blue",lwd=2,lty=3)
axis(side=1, at=xtick, labels = TRUE)
legend(1,0.00133,legend = c("Z",expression('V')),pch = c(15,16),bty = "n",cex = 0.9,col =c("springgreen3","brown4") )
legend(3,0.00133,
       c(expression('LCL'[IMEWMA]),
         expression('UCL'[IMEWMA]),
         expression('CL'[IMEWMA])),
       col = c("green","blue","red"),
       lwd = c(2,2,2),lty = c(2,3,1), bty = "n",horiz = T,cex = 0.9)

legend(3,0.001232,
       c(expression('LCL'['V']),
         expression('UCL'['V']),
         expression('CL'['V'])),
       col = c("green","blue","red"),
       lwd = c(1,1,2),lty = c(4,5,1), bty = "n",horiz = T,cex = 0.9)
####################
n=6
L1=2.8530
p1=2/(3*n)
W11=1-(L1*sqrt(p1))
W11

W22=1+(L1*sqrt(p1))
W22

LCL1=W11*w0
UCL1=W22*w0

sigma_s1=s[1:10]
sigma_s2=s[11:20]
sigma_s=c(sigma_s1,1.25*sigma_s2)

lines((sigma_s),type="b",lwd=1,lty=1,pch=16,col="brown4",cex=0.65)
abline(h=LCL1,col="green",lwd=1,lty=4,cex=0.75)
abline(h=UCL1,col="blue",lwd=1,lty=4,cex=0.75)






