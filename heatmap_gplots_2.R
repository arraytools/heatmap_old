library(RColorBrewer)
library(gplots)

library(RCurl)
x <- as.matrix(read.table(getURL("https://raw.githubusercontent.com/arraytools/heatmap/master/gplots_rld.txt")))
topVarGenes <- read.table(getURL("https://raw.githubusercontent.com/arraytools/heatmap/master/gplots_topVarGenes.txt"))[, 1]

heatmap.2( x[ topVarGenes, ], scale="row", 
           trace="none", dendrogram="column", 
           col = colorRampPalette( rev(brewer.pal(9, "RdBu")) )(255))

