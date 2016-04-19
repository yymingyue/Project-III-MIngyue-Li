# The survival signature of the system when component 1 in type 1 is failed.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
g12<-delete.vertices(graph.formula(s-1:3:5:6,1-2,3-4,5:6-7,2:4:7-t),"1")
V(g12)$compType <- NA
V(g12)$compType[match(c("1","6","7"), V(g12)$name)] <- "Type 1"
V(g12)$compType[match(c("2","4"), V(g12)$name)] <- "Type 2"
V(g12)$compType[match(c("3","5"), V(g12)$name)] <- "Type 3"
V(g12)$compType[match(c("s","t"), V(g12)$name)] <- NA
computeSystemSurvivalSignature(g12, frac=TRUE)

# The survival signature of the system when component 1 in type 1 is functioning.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
g11<-graph.formula(s-2:3:5:6,3-4,5:6-7,2:4:7-t)
V(g11)$compType <- NA
V(g11)$compType[match(c("6","7"), V(g11)$name)] <- "Type 1"
V(g11)$compType[match(c("2","4"), V(g11)$name)] <- "Type 2"
V(g11)$compType[match(c("3","5"), V(g11)$name)] <- "Type 3"
V(g11)$compType[match(c("s","t"), V(g11)$name)] <- NA
computeSystemSurvivalSignature(g11, frac=TRUE)
#############################################################################
# The survival signature of the system when component 2 in type 2 is failed.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
g22<-delete.vertices(graph.formula(s-1:3:5:6,1-2,3-4,5:6-7,2:4:7-t),"2")
V(g22)$compType <- NA
V(g22)$compType[match(c("1","6","7"), V(g22)$name)] <- "Type 1"
V(g22)$compType[match(c("2","4"), V(g22)$name)] <- "Type 2"
V(g22)$compType[match(c("3","5"), V(g22)$name)] <- "Type 3"
V(g22)$compType[match(c("s","t"), V(g22)$name)] <- NA
computeSystemSurvivalSignature(g22, frac=TRUE)

# The survival signature of the system when component 2 in type 2 is functioning.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
g21<-graph.formula(s-1:3:5:6,3-4,5:6-7,1:4:7-t)
V(g21)$compType <- NA
V(g21)$compType[match(c("1","6","7"), V(g21)$name)] <- "Type 1"
V(g21)$compType[match(c("4"), V(g21)$name)] <- "Type 2"
V(g21)$compType[match(c("3","5"), V(g21)$name)] <- "Type 3"
V(g21)$compType[match(c("s","t"), V(g21)$name)] <- NA
computeSystemSurvivalSignature(g21, frac=TRUE)
#############################################################################
# The survival signature of the system when component 3 in type 3 is failed.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
g32<-delete.vertices(graph.formula(s-1:3:5:6,1-2,3-4,5:6-7,2:4:7-t),"3")
V(g32)$compType <- NA
V(g32)$compType[match(c("1","6","7"), V(g32)$name)] <- "Type 1"
V(g32)$compType[match(c("2","4"), V(g32)$name)] <- "Type 2"
V(g32)$compType[match(c("3","5"), V(g32)$name)] <- "Type 3"
V(g32)$compType[match(c("s","t"), V(g32)$name)] <- NA
computeSystemSurvivalSignature(g32, frac=TRUE)

# The survival signature of the system when component 3 in type 3 is functioning.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
g31<-graph.formula(s-s-1:4:5:6,1-2,5:6-7,2:4:7-t)
V(g31)$compType <- NA
V(g31)$compType[match(c("1","6","7"), V(g31)$name)] <- "Type 1"
V(g31)$compType[match(c("2","4"), V(g31)$name)] <- "Type 2"
V(g31)$compType[match(c("5"), V(g31)$name)] <- "Type 3"
V(g31)$compType[match(c("s","t"), V(g31)$name)] <- NA
computeSystemSurvivalSignature(g31, frac=TRUE)
##############################################################################
# The survival signature of the system when component 4 in type 2 is failed.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
g42<-delete.vertices(graph.formula(s-1:3:5:6,1-2,3-4,5:6-7,2:4:7-t),"4")
V(g42)$compType <- NA
V(g42)$compType[match(c("1","6","7"), V(g42)$name)] <- "Type 1"
V(g42)$compType[match(c("2","4"), V(g42)$name)] <- "Type 2"
V(g42)$compType[match(c("3","5"), V(g42)$name)] <- "Type 3"
V(g42)$compType[match(c("s","t"), V(g42)$name)] <- NA
computeSystemSurvivalSignature(g42, frac=TRUE)

# The survival signature of the system when component 4 in type 2 is functioning.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
g41<-graph.formula(s-1:3:5:6,1-2,5:6-7,2:3:7-t)
V(g41)$compType <- NA
V(g41)$compType[match(c("1","6","7"), V(g41)$name)] <- "Type 1"
V(g41)$compType[match(c("2"), V(g41)$name)] <- "Type 2"
V(g41)$compType[match(c("3","5"), V(g41)$name)] <- "Type 3"
V(g41)$compType[match(c("s","t"), V(g41)$name)] <- NA
computeSystemSurvivalSignature(g41, frac=TRUE)
##############################################################################
# The survival signature of the system when component 5 in type 3 is failed.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
g52<-delete.vertices(graph.formula(s-1:3:5:6,1-2,3-4,5:6-7,2:4:7-t),"5")
V(g52)$compType <- NA
V(g52)$compType[match(c("1","6","7"), V(g52)$name)] <- "Type 1"
V(g52)$compType[match(c("2","4"), V(g52)$name)] <- "Type 2"
V(g52)$compType[match(c("3","5"), V(g52)$name)] <- "Type 3"
V(g52)$compType[match(c("s","t"), V(g52)$name)] <- NA
computeSystemSurvivalSignature(g52, frac=TRUE)

# The survival signature of the system when component 5 in type 3 is functioning.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
g51<-add.edges(graph.formula(s-1:3:6,1-2,3-4,6-7,2:4:7-t),c("s","7"))
V(g51)$compType <- NA
V(g51)$compType[match(c("1","6","7"), V(g51)$name)] <- "Type 1"
V(g51)$compType[match(c("2","4"), V(g51)$name)] <- "Type 2"
V(g51)$compType[match(c("3"), V(g51)$name)] <- "Type 3"
V(g51)$compType[match(c("s","t"), V(g51)$name)] <- NA
computeSystemSurvivalSignature(g51, frac=TRUE)
##############################################################################
# The survival signature of the system when component 7 in type 1 is failed.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
g72<-delete.vertices(graph.formula(s-1:3:5:6,1-2,3-4,5:6-7,2:4:7-t),"7")
V(g72)$compType <- NA
V(g72)$compType[match(c("1","6","7"), V(g72)$name)] <- "Type 1"
V(g72)$compType[match(c("2","4"), V(g72)$name)] <- "Type 2"
V(g72)$compType[match(c("3","5"), V(g72)$name)] <- "Type 3"
V(g72)$compType[match(c("s","t"), V(g72)$name)] <- NA
computeSystemSurvivalSignature(g72, frac=TRUE)

# The survival signature of the system when component 7 in type 1 is functioning.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
g71<-graph.formula(s-1:3:5:6,1-2,3-4,5:6,2:4:5:6-t)
V(g71)$compType <- NA
V(g71)$compType[match(c("1","6"), V(g71)$name)] <- "Type 1"
V(g71)$compType[match(c("2","4"), V(g71)$name)] <- "Type 2"
V(g71)$compType[match(c("3","5"), V(g71)$name)] <- "Type 3"
V(g71)$compType[match(c("s","t"), V(g71)$name)] <- NA
computeSystemSurvivalSignature(g71, frac=TRUE)
##########################################################################
# The relative importance index for all 7 components in 3 types
RI1<-function(t){
  p<-(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+ (1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+ (1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+1*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+ (1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+ (1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+ (3/8)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+ (1/4)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+1*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/4)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))
  return(p)
}  
RI2<-function(t){
  p<-(1/3)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/3)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/3)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+(1/3)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/6)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(2/3)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/2)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/3)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+(2/3)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/6)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))
  return(p)
}  
RI3<-function(t){
  p<-(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+1*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+1*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/3)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(2/3)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/3)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/3)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/6)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))
  return(p)
}  
RI4<-function(t){
  p<-(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+1*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+1*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(2/3)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+(1/3)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/3)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+(1/3)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/3)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))
  return(p)
}  
RI5<-function(t){
  p<-1*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/3)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/3)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/3)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/6)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(2-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/3)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/3)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/3)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/6)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))
  return(p)
}
RI6<-function(t){
  p<-(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/4)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/8)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/2)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))
  return(p)
}
RI7<-function(t){
  p<-(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+1*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+(1/2)*((1*(1-exp(-0.4*t))^3*(exp(-0.4*t))^0)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(3/4)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+1*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+(1/4)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+(1/2)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/4)*((3*(1-exp(-0.4*t))^2*(exp(-0.4*t))^1)*(1*(1-exp(-0.8*t))^0*(exp(-0.8*t))^2)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+1*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+1*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))+1*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(1*(1-exp(-0.8*t))^2*(exp(-0.8*t))^0)*(1*(1-exp(-1.2*t))^0*(exp(-1.2*t))^2))+(1/2)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(1*(1-exp(-1.2*t))^2*(exp(-1.2*t))^0))+(1/6)*((3*(1-exp(-0.4*t))^1*(exp(-0.4*t))^2)*(2*(1-exp(-0.8*t))^1*(exp(-0.8*t))^1)*(2*(1-exp(-1.2*t))^1*(exp(-1.2*t))^1))
  return(p)
}  
plot(RI1,0,15,ylim=range(c(0,0.5)),type="l",col=1)
par(new=TRUE)
plot(RI2,0,15,ylim=range(c(0,0.5)),type="l",col=2)
par(new=TRUE)
plot(RI3,0,15,ylim=range(c(0,0.5)),type="l",col=3)
par(new=TRUE)
plot(RI4,0,15,ylim=range(c(0,0.5)),type="l",col=4)
par(new=TRUE)
plot(RI5,0,15,ylim=range(c(0,0.5)),type="l",col=5)
par(new=TRUE)
plot(RI6,0,15,ylim=range(c(0,0.5)),type="l",col=6)
par(new=TRUE)
plot(RI7,0,15,ylim=range(c(0,0.5)),type="l",col="darkorange3")
legend("topright",c("component 1","component 2","component 3","component 4","component 5","component 6","component 7"),lty=c(1,1,1,1,1,1,1), lwd=c(0.02,0.02),col=c(1,2,3,4,5,6,"darkorange3"),cex = 0.7)


