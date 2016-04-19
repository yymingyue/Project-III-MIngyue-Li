# The survival signature of the system when component 6 in type 1 is failed.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
g62<-delete.vertices(graph.formula(s-1:3:5:6,1-2,3-4,5:6-7,2:4:7-t),"6")
V(g62)$compType <- NA
V(g62)$compType[match(c("1","6","7"), V(g62)$name)] <- "Type 1"
V(g62)$compType[match(c("2","4"), V(g62)$name)] <- "Type 2"
V(g62)$compType[match(c("3","5"), V(g62)$name)] <- "Type 3"
V(g62)$compType[match(c("s","t"), V(g62)$name)] <- NA
computeSystemSurvivalSignature(g62, frac=TRUE)

# The survival signature of the system when component 6 in type 1 is functioning.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
g61<-add.edges(graph.formula(s-1:3:5,1-2,3-4,5-7,2:4:7-t),c("s","7"))
V(g61)$compType <- NA
V(g61)$compType[match(c("1","7"), V(g61)$name)] <- "Type 1"
V(g61)$compType[match(c("2","4"), V(g61)$name)] <- "Type 2"
V(g61)$compType[match(c("3","5"), V(g61)$name)] <- "Type 3"
V(g61)$compType[match(c("s","t"), V(g61)$name)] <- NA
computeSystemSurvivalSignature(g61, frac=TRUE)

# The relative importance index of component 6.
RI6<-function(t){
  p<-(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/4)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/8)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/2)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))
  return(p)
}
plot(RI6,0,15,ylim=range(c(0,0.5)),type="l",col=6)
legend("topright","Relative Importance Index",lty=1,lwd=c(0.02,0.02),col=6)