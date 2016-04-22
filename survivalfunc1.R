
# The survival function of the system if all components failure times obey exponential distribution with parameter is 0.8.
yy<-function(t){
       p<-((exp(-0.8*t))^4+4*(1-(exp(-0.8*t)))*(exp(-0.8*t))^3+5*(1-(exp(-0.8*t)))^2*(exp(-0.8*t))^2+(1-(exp(-0.8*t)))^3*(exp(-0.8*t)))
      return(p)
}

# The survival function of the system if all components failure times obey exponential distribution with parameter is 0.4.

yy1<-function(t){
  p<-((exp(-0.4*t))^4+4*(1-(exp(-0.4*t)))*(exp(-0.4*t))^3+5*(1-(exp(-0.4*t)))^2*(exp(-0.4*t))^2+(1-(exp(-0.4*t)))^3*(exp(-0.4*t)))
  return(p)
}
 
# The survival function of the system if all components failure times obey exponential distribution with parameter is 1.2.

yy2<-function(t){
  p<-((exp(-1.2*t))^4+4*(1-(exp(-1.2*t)))*(exp(-1.2*t))^3+5*(1-(exp(-1.2*t)))^2*(exp(-1.2*t))^2+(1-(exp(-1.2*t)))^3*(exp(-1.2*t)))
  return(p)
}
plot(yy,0,5)
par(new=TRUE)
plot(yy,0,5,axes=F,type="l", col="red")
par(new=TRUE)
plot(yy1,0,5,axes=F,type="l", col="green")
par(new=TRUE)
plot(yy2,0,5,axes=F,type="l", col="blue")
legend("topright",c("lambda=0.8","lambda=0.4","lambda=1.2"),lty=c(1,1,1), lwd=c(0.02,0.02),col=c("red","green","blue"),cex = 0.9)
