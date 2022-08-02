L1 =0.2848; L2 =2.2987; n = 6; alpha = .0027; del=1; ARL_0=370
sg2 = del*(8.810865e-05)^2; lcl = L1*(8.810865e-05)^2; ucl = L2*(8.810865e-05)^2; 
p = rl =c()

for (j in 1:10000) {
  for (i in 1:10000) {
    r = sqrt(rgamma(n, 1.5, scale = 2*sg2)) 
    p[i] = sum(r^2)/(3*n)
    if (lcl > p[i] | ucl < p[i]) 
    {
      rl[j] = i
      #print(cbind(length(rl),rl[j],mean(rl), sqrt(var(rl)),median(rl)))
      break
    }
    else
    {
      rl[j] = 100000
    }
    
  }
  
}

a1<-median(rl)


L1 =0.2848; L2 =2.2987; n = 6; alpha = .0027; del=1.05; ARL_0=370
sg2 = del*(8.810865e-05)^2; lcl = L1*(8.810865e-05)^2; ucl = L2*(8.810865e-05)^2; 
p = rl =c()

for (j in 1:10000) {
  for (i in 1:10000) {
    r = sqrt(rgamma(n, 1.5, scale = 2*sg2)) 
    p[i] = sum(r^2)/(3*n)
    if (lcl > p[i] | ucl < p[i]) 
    {
      rl[j] = i
      #print(cbind(length(rl),rl[j],mean(rl), sqrt(var(rl)),median(rl)))
      break
    }
    else
    {
      rl[j] = 100000
    }
    
  }
  
}

a2<-median(rl)

L1 =0.2848; L2 =2.2987; n = 6; alpha = .0027; del=1.10; ARL_0=370
sg2 = del*(8.810865e-05)^2; lcl = L1*(8.810865e-05)^2; ucl = L2*(8.810865e-05)^2; 
p = rl =c()

for (j in 1:10000) {
  for (i in 1:10000) {
    r = sqrt(rgamma(n, 1.5, scale = 2*sg2)) 
    p[i] = sum(r^2)/(3*n)
    if (lcl > p[i] | ucl < p[i]) 
    {
      rl[j] = i
      #print(cbind(length(rl),rl[j],mean(rl), sqrt(var(rl)),median(rl)))
      break
    }
    else
    {
      rl[j] = 100000
    }
    
  }
  
}

a3<-median(rl)

L1 =0.2848; L2 =2.2987; n = 6; alpha = .0027; del=1.15; ARL_0=370
sg2 = del*(8.810865e-05)^2; lcl = L1*(8.810865e-05)^2; ucl = L2*(8.810865e-05)^2; 
p = rl =c()

for (j in 1:10000) {
  for (i in 1:10000) {
    r = sqrt(rgamma(n, 1.5, scale = 2*sg2)) 
    p[i] = sum(r^2)/(3*n)
    if (lcl > p[i] | ucl < p[i]) 
    {
      rl[j] = i
      #print(cbind(length(rl),rl[j],mean(rl), sqrt(var(rl)),median(rl)))
      break
    }
    else
    {
      rl[j] = 100000
    }
    
  }
  
}

a4<-median(rl)

L1 =0.2848; L2 =2.2987; n = 6; alpha = .0027; del=1.20; ARL_0=370
sg2 = del*(8.810865e-05)^2; lcl = L1*(8.810865e-05)^2; ucl = L2*(8.810865e-05)^2; 
p = rl =c()

for (j in 1:10000) {
  for (i in 1:10000) {
    r = sqrt(rgamma(n, 1.5, scale = 2*sg2)) 
    p[i] = sum(r^2)/(3*n)
    if (lcl > p[i] | ucl < p[i]) 
    {
      rl[j] = i
     # print(cbind(length(rl),rl[j],mean(rl), sqrt(var(rl)),median(rl)))
      break
    }
    else
    {
      rl[j] = 100000
    }
    
  }
  
}

a5<-median(rl)

L1 =0.2848; L2 =2.2987; n = 6; alpha = .0027; del=1.25; ARL_0=370
sg2 = del*(8.810865e-05)^2; lcl = L1*(8.810865e-05)^2; ucl = L2*(8.810865e-05)^2; 
p = rl =c()

for (j in 1:10000) {
  for (i in 1:10000) {
    r = sqrt(rgamma(n, 1.5, scale = 2*sg2)) 
    p[i] = sum(r^2)/(3*n)
    if (lcl > p[i] | ucl < p[i]) 
    {
      rl[j] = i
      #print(cbind(length(rl),rl[j],mean(rl), sqrt(var(rl)),median(rl)))
      break
    }
    else
    {
      rl[j] = 100000
    }
    
  }
  
}

a6<-median(rl)

L1 =0.2848; L2 =2.2987; n = 6; alpha = .0027; del=1.35; ARL_0=370
sg2 = del*(8.810865e-05)^2; lcl = L1*(8.810865e-05)^2; ucl = L2*(8.810865e-05)^2; 
p = rl =c()

for (j in 1:10000) {
  for (i in 1:10000) {
    r = sqrt(rgamma(n, 1.5, scale = 2*sg2)) 
    p[i] = sum(r^2)/(3*n)
    if (lcl > p[i] | ucl < p[i]) 
    {
      rl[j] = i
      #print(cbind(length(rl),rl[j],mean(rl), sqrt(var(rl)),median(rl)))
      break
    }
    else
    {
      rl[j] = 100000
    }
    
  }
  
}

a7<-median(rl)

L1 =0.2848; L2 =2.2987; n = 6; alpha = .0027; del=1.50; ARL_0=370
sg2 = del*(8.810865e-05)^2; lcl = L1*(8.810865e-05)^2; ucl = L2*(8.810865e-05)^2; 
p = rl =c()

for (j in 1:10000) {
  for (i in 1:10000) {
    r = sqrt(rgamma(n, 1.5, scale = 2*sg2)) 
    p[i] = sum(r^2)/(3*n)
    if (lcl > p[i] | ucl < p[i]) 
    {
      rl[j] = i
     # print(cbind(length(rl),rl[j],mean(rl), sqrt(var(rl)),median(rl)))
      break
    }
    else
    {
      rl[j] = 100000
    }
    
  }
  
}

a8<-median(rl)

L1 =0.2848; L2 =2.2987; n = 6; alpha = .0027; del=1.75; ARL_0=370
sg2 = del*(8.810865e-05)^2; lcl = L1*(8.810865e-05)^2; ucl = L2*(8.810865e-05)^2; 
p = rl =c()

for (j in 1:10000) {
  for (i in 1:10000) {
    r = sqrt(rgamma(n, 1.5, scale = 2*sg2)) 
    p[i] = sum(r^2)/(3*n)
    if (lcl > p[i] | ucl < p[i]) 
    {
      rl[j] = i
      #print(cbind(length(rl),rl[j],mean(rl), sqrt(var(rl)),median(rl)))
      break
    }
    else
    {
      rl[j] = 100000
    }
    
  }
  
}

a9<-median(rl)

L1 =0.2848; L2 =2.2987; n = 6; alpha = .0027; del=2.00; ARL_0=370
sg2 = del*(8.810865e-05)^2; lcl = L1*(8.810865e-05)^2; ucl = L2*(8.810865e-05)^2; 
p = rl =c()

for (j in 1:10000) {
  for (i in 1:10000) {
    r = sqrt(rgamma(n, 1.5, scale = 2*sg2)) 
    p[i] = sum(r^2)/(3*n)
    if (lcl > p[i] | ucl < p[i]) 
    {
      rl[j] = i
     # print(cbind(length(rl),rl[j],mean(rl), sqrt(var(rl)),median(rl)))
      break
    }
    else
    {
      rl[j] = 100000
    }
    
  }
  
}

a10<-median(rl)

MDRL<-c(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
MDRL
