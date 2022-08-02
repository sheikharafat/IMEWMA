set.seed(558)

t=1:12
n=6
lamda=0.25
L=3.031
a=2/(3*n)
b=lamda/(2-lamda)
c=(1-(1-lamda)^(2*t))
w1<-1-(L*sqrt(a*b*c))
w1
w2<-1+(L*sqrt(a*b*c))
w2

x<-c(42.4,44.8,51.5,47.4,60.3,52,61.9,45.2,68.8,44.2,42.4,165.5,54,69.6,53.9,67.6,42.4,110,46.3,54,89.1,65.5,95.7,55,54.9,43.4,59.3,100.6,92.6,92.5,44.1,81.6,83,54,88,74.7,56.2,83,65,86.7,78.1,46.8,49.8,124.6,68.8,50.8,68.9,79.5,50.5,143.6,65.1,43.8,83.6,124.5,49.2,49.2,74.8,79.4,89.5,105.6,46.7,107.8,63.7,72.8,82.6,68.9,73.8,72.2,77.6,61.4,103.6,77.2)


r<- matrix(, nrow = 6, ncol=12)
s=z=c()
lambda=0.25
for(i in 1:12){
  r[,i]<-sample(x,6,replace = T)
  s[i]<-((3*6)^-1)*sum(r[,i]^-2)
  w0<-mean(s)
  if(i==1){
    z[i] <- lambda*s[i]+(1-lambda)*w0
  }else {
    z[i] <- lambda*s[i]+(1-lambda)*z[i-1]
  }
}




#plotting statistic
ZIM=c(z[1:7],1.40*z[8:12])

#EWMA control limits

UCL=w2*w0
CL=w0
LCL=w1*w0

#EWMA control chart
par(mar=c(4,4,1.75,1.75))
plot((ZIM),type ="b",ylim=c(0.000000,0.00022),xlim=c(1,12),ylab = "Z",xlab = "Sample number",col="brown4",pch=16)

abline(h =w0 , col = "red", lty = 2, lwd = 2)
lines(LCL,col="green",lwd=2,lty=2)
lines(UCL,col="blue",lwd=2,lty=2)
legend(1,0.00022,legend = c("Z",expression('V')),pch = c(16,15),bty = "n",cex = 0.8,col =c("brown4","springgreen3") )
legend(2,0.00022,
       c(expression('LCL'[IMEWMA]),
         expression('UCL'[IMEWMA]),
         expression('CL'[IMEWMA])),
       col = c("green","blue","red"),
       lwd = c(2,2,2),lty = c(3,3,3), bty = "n",horiz = T,cex = 0.8)
legend(2.1,0.000205,
       c(expression('LCL'['V']),
         expression('UCL'['V']),
         expression('CL'['V'])),
       col = c("green","blue","red"),
       lwd = c(2,2,2),lty = c(5,5,3), bty = "n",horiz = T,cex = 0.8)

#shewhart (V) control chart
n=6
L1=2.844981
p1=2/(3*n)
W11=1-(L1*sqrt(p1))
W11

W22=1+(L1*sqrt(p1))
W22

LCL1=W11*w0
UCL1=W22*w0
sigma_s=c(s[1:7],1.40*s[8:12])

lines((sigma_s),type="b",xlab = "sample number",lwd=1,lty=1,pch=15,col="springgreen3",cex=0.65)
abline(h=LCL1,col="green",lwd=2,lty=2)
abline(h=UCL1,col="blue",lwd=2,lty=2)


