# The survival signature of the system when components 1 and 2 are both failed.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
S120<-delete.vertices(graph.formula(s-1:3:5:6,1-2,3-4,5:6-7,2:4:7-t),c("1","2"))
plot(S120)
V(S120)$compType <- NA
V(S120)$compType[match(c("1","6","7"), V(S120)$name)] <- "Type 1"
V(S120)$compType[match(c("2","4"), V(S120)$name)] <- "Type 2"
V(S120)$compType[match(c("3","5"), V(S120)$name)] <- "Type 3"
V(S120)$compType[match(c("s","t"), V(S120)$name)] <- NA
computeSystemSurvivalSignature(S120, frac=TRUE)

# The survival signature of the system when components 1 and 2 are both functioning.
# The source and the terminal of the system connected without going through any componenys,therefore, the survival signature is 1 for all cases. 
##################################################################################
# The survival signature of the system when components 1 and 4 are both failed.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
S140<-delete.vertices(graph.formula(s-1:3:5:6,1-2,3-4,5:6-7,2:4:7-t),c("1","4"))
plot(S140)
V(S140)$compType <- NA
V(S140)$compType[match(c("1","6","7"), V(S140)$name)] <- "Type 1"
V(S140)$compType[match(c("2","4"), V(S140)$name)] <- "Type 2"
V(S140)$compType[match(c("3","5"), V(S140)$name)] <- "Type 3"
V(S140)$compType[match(c("s","t"), V(S140)$name)] <- NA
computeSystemSurvivalSignature(S140, frac=TRUE)

# The survival signature of the system when components 1 and 4 are both functioning.
S141<-graph.formula(s-2:3:5:6,5:6-7,2:3:7-t)
plot(S141)
V(S141)$compType <- NA
V(S141)$compType[match(c("1","6","7"), V(S141)$name)] <- "Type 1"
V(S141)$compType[match(c("2","4"), V(S141)$name)] <- "Type 2"
V(S141)$compType[match(c("3","5"), V(S141)$name)] <- "Type 3"
V(S141)$compType[match(c("s","t"), V(S141)$name)] <- NA
computeSystemSurvivalSignature(S141, frac=TRUE)
#################################################################################
# The survival signature of the system when components 1 and 6 are both failed.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
S160<-delete.vertices(graph.formula(s-1:3:5:6,1-2,3-4,5:6-7,2:4:7-t),c("1","6"))
plot(S160)
V(S160)$compType <- NA
V(S160)$compType[match(c("1","6","7"), V(S160)$name)] <- "Type 1"
V(S160)$compType[match(c("2","4"), V(S160)$name)] <- "Type 2"
V(S160)$compType[match(c("3","5"), V(S160)$name)] <- "Type 3"
V(S160)$compType[match(c("s","t"), V(S160)$name)] <- NA
computeSystemSurvivalSignature(S160, frac=TRUE)

# The survival signature of the system when components 1 and 6 are both functioning.
S161<-add_edges(graph.formula(s-2:3:5,3-4,2:4:7-t),c("s","7"))
plot(S161)
V(S161)$compType <- NA
V(S161)$compType[match(c("1","6","7"), V(S161)$name)] <- "Type 1"
V(S161)$compType[match(c("2","4"), V(S161)$name)] <- "Type 2"
V(S161)$compType[match(c("3","5"), V(S161)$name)] <- "Type 3"
V(S161)$compType[match(c("s","t"), V(S161)$name)] <- NA
computeSystemSurvivalSignature(S161, frac=TRUE)
##################################################################################
# The survival signature of the system when components 1 and 7 are both failed.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
S170<-delete.vertices(graph.formula(s-1:3:5:6,1-2,3-4,5:6-7,2:4:7-t),c("1","7"))
plot(S170)
V(S170)$compType <- NA
V(S170)$compType[match(c("1","6","7"), V(S170)$name)] <- "Type 1"
V(S170)$compType[match(c("2","4"), V(S170)$name)] <- "Type 2"
V(S170)$compType[match(c("3","5"), V(S170)$name)] <- "Type 3"
V(S170)$compType[match(c("s","t"), V(S170)$name)] <- NA
computeSystemSurvivalSignature(S170, frac=TRUE)

# The survival signature of the system when components 1 and 7 are both functioning.
S171<-graph.formula(s-2:3:5:6,3-4,2:4:5:6-t)
plot(S171)
V(S171)$compType <- NA
V(S171)$compType[match(c("1","6","7"), V(S171)$name)] <- "Type 1"
V(S171)$compType[match(c("2","4"), V(S171)$name)] <- "Type 2"
V(S171)$compType[match(c("3","5"), V(S171)$name)] <- "Type 3"
V(S171)$compType[match(c("s","t"), V(S171)$name)] <- NA
computeSystemSurvivalSignature(S171, frac=TRUE)
##################################################################################
# The survival signature of the system when components 5 and 7 are both failed.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
S570<-delete.vertices(graph.formula(s-1:3:5:6,1-2,3-4,5:6-7,2:4:7-t),c("5","7"))
plot(S570)
V(S570)$compType <- NA
V(S570)$compType[match(c("1","6","7"), V(S570)$name)] <- "Type 1"
V(S570)$compType[match(c("2","4"), V(S570)$name)] <- "Type 2"
V(S570)$compType[match(c("3","5"), V(S570)$name)] <- "Type 3"
V(S570)$compType[match(c("s","t"), V(S570)$name)] <- NA
computeSystemSurvivalSignature(S570, frac=TRUE)

# The survival signature of the system when components 5 and 7 are both functiong.
# The source and the terminal of the system connected without going through any componenys,therefore, the survival signature is 1 for all cases. 
################################################################################
# The survival signature of the system when components 6 and 7 are both failed.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
S670<-delete.vertices(graph.formula(s-1:3:5:6,1-2,3-4,5:6-7,2:4:7-t),c("6","7"))
plot(S570)
V(S670)$compType <- NA
V(S670)$compType[match(c("1","6","7"), V(S670)$name)] <- "Type 1"
V(S670)$compType[match(c("2","4"), V(S670)$name)] <- "Type 2"
V(S670)$compType[match(c("3","5"), V(S670)$name)] <- "Type 3"
V(S670)$compType[match(c("s","t"), V(S670)$name)] <- NA
computeSystemSurvivalSignature(S670, frac=TRUE)
# The survival signature of the system when components 6 and 7 are both functioning.
# The source and the terminal of the system connected without going through any componenys,therefore, the survival signature is 1 for all cases. 
##########################################################################################
# The joint pair importance of 7 combinations of compoennts are 
JPI12<-function(t){
  p<-((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(3/4)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/4)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))
  return(p)
} 
JPI14<-function(t){
  p<-(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(3/4)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))
  return(p)
}  
JPI16<-function(t){
  p<-(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/4)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))
  return(p)
} 
JPI17<-function(t){
  p<-(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(3/4)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(3/4)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))
  return(p)
}
JPI56<-function(t){
  p<-(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/4)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))
  return(p)
}
JPI57<-function(t){
  p<-((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(3/4)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/4)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))
  return(p)
}
JPI67<-function(t){
  p<-((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(3/4)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/4)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))
  return(p)
}
plot(JPI12,0,15,ylim=range(c(0,1)),type="l",col=1)
par(new=TRUE)
plot(JPI14,0,15,ylim=range(c(0,1)),type="l",col=2)
par(new=TRUE)
plot(JPI16,0,15,ylim=range(c(0,1)),type="l",col=3)
par(new=TRUE)
plot(JPI17,0,15,ylim=range(c(0,1)),type="l",col=4)
par(new=TRUE)
plot(JPI56,0,15,ylim=range(c(0,1)),type="l",col=5)
par(new=TRUE)
plot(JPI57,0,15,ylim=range(c(0,1)),type="l",col=6)
legend(9,0.9,c("components 1,2","components 1,4","components 1,6","components 1,7","components 5,6","components 5,7 and 6,7"),lty=c(1,1,1,1,1,1), lwd=c(0.02,0.02),col=c(1,2,3,4,5,6),cex = 0.5)



