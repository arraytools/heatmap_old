library(RColorBrewer)
library(gplots)

library(RCurl)
x <- as.matrix(read.table(getURL("https://raw.githubusercontent.com/arraytools/heatmap/master/gplots_rld.txt")))
topVarGenes <- read.table(getURL("https://raw.githubusercontent.com/arraytools/heatmap/master/gplots_topVarGenes.txt"))[, 1]

heatmap.2( x[ topVarGenes, ], scale="row", 
           trace="none", dendrogram="column", 
           col = colorRampPalette( rev(brewer.pal(9, "RdBu")) )(255))

# brewer.pal(9, ) creates color palettes with 9 different colors
# colorRampPalette() interpolates a set of colors to create new color palettes
#     and color ramps, functions that map the interval [0,1] to colors.
#  >  rev(brewer.pal(9, "RdBu")) 
# [1] "#2166AC" "#4393C3" "#92C5DE" "#D1E5F0" "#F7F7F7" "#FDDBC7" "#F4A582"
# [8] "#D6604D" "#B2182B"
# > colorRampPalette( rev(brewer.pal(9, "RdBu")) )(9)
# [1] "#2166AC" "#4393C3" "#92C5DE" "#D1E5F0" "#F7F7F7" "#FDDBC7" "#F4A582"
# [8] "#D6604D" "#B2182B"
# > colorRampPalette( rev(brewer.pal(9, "RdBu")) )(10)
#  [1] "#2166AC" "#3F8DC0" "#80B9D8" "#BBDAEA" "#E6EFF3" "#F9EAE1" "#FAC9B0"
#  [8] "#ED9576" "#D25849" "#B2182B"
