x<-c(42.4,44.8,51.5,47.4,60.3,52,61.9,45.2,68.8,44.2,42.4,165.5,54,69.6,53.9,67.6,42.4,110,46.3,54,89.1,65.5,95.7,55,54.9,43.4,59.3,100.6,92.6,92.5,44.1,81.6,83,54,88,74.7,56.2,83,65,86.7,78.1,46.8,49.8,124.6,68.8,50.8,68.9,79.5,50.5,143.6,65.1,43.8,83.6,124.5,49.2,49.2,74.8,79.4,89.5,105.6,46.7,107.8,63.7,72.8,82.6,68.9,73.8,72.2,77.6,61.4,103.6,77.2)
t=30
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
