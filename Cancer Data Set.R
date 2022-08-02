x<-c(0.3,7.4,13.5,16.8,21,29.1,37,41,45,52,60,78,105,129,0.3,7.5,14.4,17.2,21.1,30,38,41,46,54,61,80,109,129,4,8.4,14.4,17.3,23,31,38,41,46,55,62,83,109,139,5,8.4,14.8,17.5,23.4,31,38,42,74,56,65,88,111,154,5.6,10.3,15.5,17.9,23.6,32,39,43,48,57,65,89,115,6.2,11,15.7,19.8,24,35,39,43,49,58,67,90,117,6.3,11.8,16.2,20.4,24,35,40,43,51,59,67,93,125,6.6,12.2,16.3,20.9,27.9,37,40,44,51,60,68,96,126,6.8,12.3,16.5,21,28.2,37,40,45,51,60,69,103,127)
t=40
n1=length(x)
y<-as.numeric(n1)
j=1
for(i in 1:n1)
{
  if(x[i]>t) 
  {
    y[j]=x[i]
    j=j+1
  }
}
y
r=sort(y)
n=length(r)
a=(3*n)^-1
b=sum(1/r^2)
sigma=sqrt(a*b)
library(zipfR)
F1=(2/sqrt(pi))*(1-Igamma(3/2,1/(2*r^2*sigma^2)))
F2=(2/sqrt(pi))*(1-Igamma(3/2,1/(2*t^2*sigma^2)))
F=(F1-F2)/(1-F2)
u1=rep(0:(n-1))
u2=rep(1:n)
p1=u1/n
p2=u2/n
D1=F-p1
D2=F-p2
D3=abs(D1)
D4=abs(D2)
D<-as.numeric(n)
for(i in 1:n)
{
  if(D3[i]>D4[i])
    D[i]=D3[i]
  else
    D[i]=D4[i]
}

D
max(D)



#1% level of significance critical value is 
1.22/sqrt(n)

#5% level of significance critical value is 
1.36/sqrt(n)

#10% level of significance critical value is
1.63/sqrt(n)

