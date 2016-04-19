# The survival signature of the system when components 5 and 6 are both failed.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
S560<-delete.vertices(graph.formula(s-1:3:5:6,1-2,3-4,5:6-7,2:4:7-t),c("5","6"))
plot(S560)
V(S560)$compType <- NA
V(S560)$compType[match(c("1","6","7"), V(S560)$name)] <- "Type 1"
V(S560)$compType[match(c("2","4"), V(S560)$name)] <- "Type 2"
V(S560)$compType[match(c("3","5"), V(S560)$name)] <- "Type 3"
V(S560)$compType[match(c("s","t"), V(S560)$name)] <- NA
computeSystemSurvivalSignature(S560, frac=TRUE)

# The survival signature of the system when components 5 and 6 are both functioning.
S561<-graph.formula(s-1:3:7,3-4,1-2,2:4:7-t)
plot(S561)
V(S561)$compType <- NA
V(S561)$compType[match(c("1","6","7"), V(S561)$name)] <- "Type 1"
V(S561)$compType[match(c("2","4"), V(S561)$name)] <- "Type 2"
V(S561)$compType[match(c("3","5"), V(S561)$name)] <- "Type 3"
V(S561)$compType[match(c("s","t"), V(S561)$name)] <- NA
computeSystemSurvivalSignature(S561, frac=TRUE)
