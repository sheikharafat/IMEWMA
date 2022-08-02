L=3.353; n =9; ARL_0=370; del=1.00
sg2 = del*(8.810865e-05)^2;   lambda=0.750
p = rl =z=lcl=ucl=c()
for (j in 1:10000) {
  for (i in 1:10000) {
    r = 1/sqrt(rgamma(n, 1.5, scale = 2*sg2))
    p[i] = sum(r^-2)/(3*n)
    if(i==1){
      z[i]<-(lambda*p[i])+((1-lambda)*sg2)
    } else{
      z[i]<-(lambda*p[i])+((1-lambda)*z[i-1])
    }
    lcl[i]<- (8.810865e-05)^2*(1-(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    ucl[i]<- (8.810865e-05)^2*(1+(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    if (lcl[i] > z[i] | ucl[i] < z[i]) 
    {
      rl[j] = i
      break
    }
    else
    {
      rl[j] = 100000
    }
  }
}
a1<-mean(rl)
a1
b1<-sd(rl)
b1
c1<-median(rl)
c1


L=3.353; n =9; ARL_0=370; del=1.05
sg2 = del*(8.810865e-05)^2;   lambda=0.750
p = rl =z=lcl=ucl=c()
for (j in 1:10000) {
  for (i in 1:10000) {
    r = 1/sqrt(rgamma(n, 1.5, scale = 2*sg2))
    p[i] = sum(r^-2)/(3*n)
    if(i==1){
      z[i]<-(lambda*p[i])+((1-lambda)*sg2)
    } else{
      z[i]<-(lambda*p[i])+((1-lambda)*z[i-1])
    }
    lcl[i]<- (8.810865e-05)^2*(1-(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    ucl[i]<- (8.810865e-05)^2*(1+(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    if (lcl[i] > z[i] | ucl[i] < z[i]) 
    {
      rl[j] = i
      break
    }
    else
    {
      rl[j] = 100000
    }
  }
}
a2<-mean(rl)
a2
b2<-sd(rl)
b2
c2<-median(rl)
c2


L=3.353; n =9; ARL_0=370; del=1.10
sg2 = del*(8.810865e-05)^2;   lambda=0.750
p = rl =z=lcl=ucl=c()
for (j in 1:10000) {
  for (i in 1:10000) {
    r = 1/sqrt(rgamma(n, 1.5, scale = 2*sg2))
    p[i] = sum(r^-2)/(3*n)
    if(i==1){
      z[i]<-(lambda*p[i])+((1-lambda)*sg2)
    } else{
      z[i]<-(lambda*p[i])+((1-lambda)*z[i-1])
    }
    lcl[i]<- (8.810865e-05)^2*(1-(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    ucl[i]<- (8.810865e-05)^2*(1+(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    if (lcl[i] > z[i] | ucl[i] < z[i]) 
    {
      rl[j] = i
      break
    }
    else
    {
      rl[j] = 100000
    }
  }
}
a3<-mean(rl)
a3
b3<-sd(rl)
b3
c3<-median(rl)
c3


L=3.353; n =9; ARL_0=370; del=1.15
sg2 = del*(8.810865e-05)^2;   lambda=0.750
p = rl =z=lcl=ucl=c()
for (j in 1:10000) {
  for (i in 1:10000) {
    r = 1/sqrt(rgamma(n, 1.5, scale = 2*sg2))
    p[i] = sum(r^-2)/(3*n)
    if(i==1){
      z[i]<-(lambda*p[i])+((1-lambda)*sg2)
    } else{
      z[i]<-(lambda*p[i])+((1-lambda)*z[i-1])
    }
    lcl[i]<- (8.810865e-05)^2*(1-(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    ucl[i]<- (8.810865e-05)^2*(1+(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    if (lcl[i] > z[i] | ucl[i] < z[i]) 
    {
      rl[j] = i
      break
    }
    else
    {
      rl[j] = 100000
    }
  }
}
a4<-mean(rl)
a4
b4<-sd(rl)
b4
c4<-median(rl)
c4


L=3.353; n =9; ARL_0=370; del=1.20
sg2 = del*(8.810865e-05)^2;   lambda=0.750
p = rl =z=lcl=ucl=c()
for (j in 1:10000) {
  for (i in 1:10000) {
    r = 1/sqrt(rgamma(n, 1.5, scale = 2*sg2))
    p[i] = sum(r^-2)/(3*n)
    if(i==1){
      z[i]<-(lambda*p[i])+((1-lambda)*sg2)
    } else{
      z[i]<-(lambda*p[i])+((1-lambda)*z[i-1])
    }
    lcl[i]<- (8.810865e-05)^2*(1-(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    ucl[i]<- (8.810865e-05)^2*(1+(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    if (lcl[i] > z[i] | ucl[i] < z[i]) 
    {
      rl[j] = i
      break
    }
    else
    {
      rl[j] = 100000
    }
  }
}
a5<-mean(rl)
a5
b5<-sd(rl)
b5
c5<-median(rl)
c5


L=3.353; n =9; ARL_0=370; del=1.25
sg2 = del*(8.810865e-05)^2;   lambda=0.750
p = rl =z=lcl=ucl=c()
for (j in 1:10000) {
  for (i in 1:10000) {
    r = 1/sqrt(rgamma(n, 1.5, scale = 2*sg2))
    p[i] = sum(r^-2)/(3*n)
    if(i==1){
      z[i]<-(lambda*p[i])+((1-lambda)*sg2)
    } else{
      z[i]<-(lambda*p[i])+((1-lambda)*z[i-1])
    }
    lcl[i]<- (8.810865e-05)^2*(1-(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    ucl[i]<- (8.810865e-05)^2*(1+(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    if (lcl[i] > z[i] | ucl[i] < z[i]) 
    {
      rl[j] = i
      break
    }
    else
    {
      rl[j] = 100000
    }
  }
}
a6<-mean(rl)
a6
b6<-sd(rl)
b6
c6<-median(rl)
c6


L=3.353; n =9; ARL_0=370; del=1.35
sg2 = del*(8.810865e-05)^2;   lambda=0.750
p = rl =z=lcl=ucl=c()
for (j in 1:10000) {
  for (i in 1:10000) {
    r = 1/sqrt(rgamma(n, 1.5, scale = 2*sg2))
    p[i] = sum(r^-2)/(3*n)
    if(i==1){
      z[i]<-(lambda*p[i])+((1-lambda)*sg2)
    } else{
      z[i]<-(lambda*p[i])+((1-lambda)*z[i-1])
    }
    lcl[i]<- (8.810865e-05)^2*(1-(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    ucl[i]<- (8.810865e-05)^2*(1+(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    if (lcl[i] > z[i] | ucl[i] < z[i]) 
    {
      rl[j] = i
      break
    }
    else
    {
      rl[j] = 100000
    }
  }
}
a7<-mean(rl)
a7
b7<-sd(rl)
b7
c7<-median(rl)
c7


L=3.353; n =9; ARL_0=370; del=1.50
sg2 = del*(8.810865e-05)^2;   lambda=0.750
p = rl =z=lcl=ucl=c()
for (j in 1:10000) {
  for (i in 1:10000) {
    r = 1/sqrt(rgamma(n, 1.5, scale = 2*sg2))
    p[i] = sum(r^-2)/(3*n)
    if(i==1){
      z[i]<-(lambda*p[i])+((1-lambda)*sg2)
    } else{
      z[i]<-(lambda*p[i])+((1-lambda)*z[i-1])
    }
    lcl[i]<- (8.810865e-05)^2*(1-(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    ucl[i]<- (8.810865e-05)^2*(1+(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    if (lcl[i] > z[i] | ucl[i] < z[i]) 
    {
      rl[j] = i
      break
    }
    else
    {
      rl[j] = 100000
    }
  }
}
a8<-mean(rl)
a8
b8<-sd(rl)
b8
c8<-median(rl)
c8


L=3.353; n =9; ARL_0=370; del=1.75
sg2 = del*(8.810865e-05)^2;   lambda=0.750
p = rl =z=lcl=ucl=c()
for (j in 1:10000) {
  for (i in 1:10000) {
    r = 1/sqrt(rgamma(n, 1.5, scale = 2*sg2))
    p[i] = sum(r^-2)/(3*n)
    if(i==1){
      z[i]<-(lambda*p[i])+((1-lambda)*sg2)
    } else{
      z[i]<-(lambda*p[i])+((1-lambda)*z[i-1])
    }
    lcl[i]<- (8.810865e-05)^2*(1-(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    ucl[i]<- (8.810865e-05)^2*(1+(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    if (lcl[i] > z[i] | ucl[i] < z[i]) 
    {
      rl[j] = i
      break
    }
    else
    {
      rl[j] = 100000
    }
  }
}
a9<-mean(rl)
a9
b9<-sd(rl)
b9
c9<-median(rl)
c9



L=3.353; n =9; ARL_0=370; del=2.00
sg2 = del*(8.810865e-05)^2;   lambda=0.750
p = rl =z=lcl=ucl=c()
for (j in 1:10000) {
  for (i in 1:10000) {
    r = 1/sqrt(rgamma(n, 1.5, scale = 2*sg2))
    p[i] = sum(r^-2)/(3*n)
    if(i==1){
      z[i]<-(lambda*p[i])+((1-lambda)*sg2)
    } else{
      z[i]<-(lambda*p[i])+((1-lambda)*z[i-1])
    }
    lcl[i]<- (8.810865e-05)^2*(1-(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    ucl[i]<- (8.810865e-05)^2*(1+(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    if (lcl[i] > z[i] | ucl[i] < z[i]) 
    {
      rl[j] = i
      break
    }
    else
    {
      rl[j] = 100000
    }
  }
}
a10<-mean(rl)
a10
b10<-sd(rl)
b10
c10<-median(rl)
c10


ARL<-c(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
ARL
SDRL<-c(b1,b2,b3,b4,b5,b6,b7,b8,b9,b10)
SDRL
MDRL<-c(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
MDRL




