L=3.97; n = 2; ARL_0=370; del=1.00#shift
sg2 = del*100^2;   lambda=0.75
p = rl =z=lcl=ucl=c()

for (j in 1:10000) {
  for (i in 1:10000) {
    r = 1/sqrt(rgamma(n, 1.5, scale = 2*sg2))#Inverse Maxwell Random Number  
    
    p[i] = sum(r^-2)/(3*n)
    
    if(i==1){
      z[i]<-(lambda*p[i])+((1-lambda)*sg2)
    } else{
      z[i]<-(lambda*p[i])+((1-lambda)*z[i-1])
    }
    
    lcl[i]<- sg2*(1-(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    ucl[i]<- sg2*(1+(L*sqrt((2/(3*n))*(lambda/(2-lambda))*(1-(1-lambda)^(2*i)))))
    
    
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
sqrt(var(rl1))
median(rl1)

# we run this program several times to construct the mentioned Table 6,7 and 8.