# Given that the survival signature of the system, the survival function of the system with three types of component.
# For each type, components have different exponential distributions with different parameters.
s1<-function(t){
  p<-(1/4)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+
     (1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+1*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+
     (1/6)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/3)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+
     (1/6)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(7/12)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+
     (5/6)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+(1/3)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+
     (5/6)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^2))+((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+
     (1/3)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/2)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+
     (2/3)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+(2/3)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+
     (11/12)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+
    ((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+
    ((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+((1*(1-exp(-0.4*t))^0*(exp(-0.4*t))^3)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+
    ((1*(1-exp(-0.4*t))^0*(exp(-0.4*t))^3)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+((1*(1-exp(-0.4*t))^0*(exp(-0.4*t))^3)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+
    ((1*(1-exp(-0.4*t))^0*(exp(-0.4*t))^3)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((1*(1-exp(-0.4*t))^0*(exp(-0.4*t))^3)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+
    ((1*(1-exp(-0.4*t))^0*(exp(-0.4*t))^3)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+((1*(1-exp(-0.4*t))^0*(exp(-0.4*t))^3)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+
    ((1*(1-exp(-0.4*t))^0*(exp(-0.4*t))^3)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+((1*(1-exp(-0.4*t))^0*(exp(-0.4*t))^3)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))
  return(p)
}
plot(s1,0,15,ylim=range(c(0,1)),type="l",col=1)

