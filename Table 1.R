L=3.152; n =12; ARL_0=370; del=1.00
sg2 = del*(8.810865e-05)^2;   lambda=0.50
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
mean(rl)# ARL