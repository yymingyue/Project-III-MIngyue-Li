# Using ReliabilityTheory package.
library(pracma)
library(sfsmisc)
library(igraph)
library(ReliabilityTheory)
# Create the system structue.
g<-graph.formula(s-1:3:5:6,1-2,3-4,5:6-7,2:4:7-t)
V(g)$compType <- NA
# Define all components into three different types. 
V(g)$compType[match(c("1","6","7"), V(g)$name)] <- "Type 1"
V(g)$compType[match(c("2","4"), V(g)$name)] <- "Type 2"
V(g)$compType[match(c("3","5"), V(g)$name)] <- "Type 3"
V(g)$compType[match(c("s","t"), V(g)$name)] <- NA
# Compute survival signature for the system.
 computeSystemSurvivalSignature(g, frac=TRUE)