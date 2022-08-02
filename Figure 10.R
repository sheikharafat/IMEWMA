t=1:15
n=5
lamda=0.5
L=3.376
a=2/(3*n)
b=lamda/(2-lamda)
c=(1-(1-lamda)^(2*t))
w1<-1-(L*sqrt(a*b*c))
w1
w2<-1+(L*sqrt(a*b*c))
w2



x1<-c(41,38,17.2,42,35)
x2<-c(7.4,38,17.3,126,55)
x3<-c(16.8,21,38,11.8,74)
x4<-c(68,31,96,29.1,45)
x5<-c(37,24,7.5,46,109)
x6<-c(52,52,41,126,44)
x7<-c(15.7,15.7,16.3,35,103)
x8<-c(111,46,67,41,12.2)
x9<-c(38,154,23.4,115,40)
x10<-c(39,46,15.5,62,117)
x11<-c(31,20.9,43,7.4,17.9)
x12<-c(46,6.8,29.1,57,24)
x13<-c(49,46,90,139,40)
x14<-c(45,6.3,60,88,115)
x15<-c(55,7.4,111,111,15.5)

s1=((3*5)^-1)*sum((x1^-2))
s2=((3*5)^-1)*sum((x2^-2))
s3=((3*5)^-1)*sum((x3^-2))
s4=((3*5)^-1)*sum((x4^-2))
s5=((3*5)^-1)*sum((x5^-2))
s6=((3*5)^-1)*sum((x6^-2))
s7=((3*5)^-1)*sum((x7^-2))
s8=((3*5)^-1)*sum((x8^-2))
s9=((3*5)^-1)*sum((x9^-2))
s10=((3*5)^-1)*sum((x10^-2))
s11=((3*5)^-1)*sum((x11^-2))
s12=((3*5)^-1)*sum((x12^-2))
s13=((3*5)^-1)*sum((x13^-2))
s14=((3*5)^-1)*sum((x14^-2))
s15=((3*5)^-1)*sum((x15^-2))


sigma_bar=(s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12+s13+s14+s15)/15

z1=(lamda*s1)+((1-lamda)*(sigma_bar))
z2=(lamda*s2)+((1-lamda)*z1)
z3=(lamda*s3)+((1-lamda)*(z2))
z4=(lamda*s4)+((1-lamda)*(z3))
z5=(lamda*s5)+((1-lamda)*(z4))
z6=(lamda*s6)+((1-lamda)*z5)
z7=(lamda*s7)+((1-lamda)*(z6))
z8=(lamda*s8)+((1-lamda)*z7)
z9=(lamda*s9)+((1-lamda)*(z8))
z10=(lamda*s10)+((1-lamda)*(z9))
z11=(lamda*s11)+((1-lamda)*z10)
z12=(lamda*s12)+((1-lamda)*(z11))
z13=(lamda*s13)+((1-lamda)*(z12))
z14=(lamda*s14)+((1-lamda)*(z13))
z15=(lamda*s15)+((1-lamda)*(z14))

ZIM=c(z1,z2,z3,z4,z5,z6,z7,z8,z9,1.00*z10,1.00*z11,1.00*z12,1.00*z13,1.00*z14,1.00*z15)

#EWMA control limits

UCL=w2*sigma_bar
CL=sigma_bar
LCL=w1*sigma_bar

#EWMA control chart
par(mar=c(4,4,1.75,1.75))
plot((ZIM),type ="b",ylim=c(0.00002,0.0030),xlim=c(1,15),ylab = "Plotting Statistic",xlab = "Sample number",col="brown4",pch=16)

abline(h =sigma_bar , col = "red", lty = 3, lwd = 2)
lines(LCL,col="green",lwd=2,lty=3)
lines(UCL,col="blue",lwd=2,lty=3)
legend(1,0.003,legend = "Z",pch = 16,bty = "n",cex = 0.8,col ="brown4" )
legend(2,0.003,
       c(expression('LCL'[IMEWMA]),
         expression('UCL'[IMEWMA]),
         expression('CL'[IMEWMA])),
       col = c("green","blue","red"),
       lwd = c(2,2,2),lty = c(3,3,3), bty = "n",horiz = T,cex = 0.8)


