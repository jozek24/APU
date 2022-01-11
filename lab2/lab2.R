install.packages("devtools", type = "win.binary") 

devtools::install_github("gluc/ahp", build_vignettes = TRUE) 

library(ahp)
library(data.tree)
library(data.tree)
ahpFile <- system.file("extdata", "iphones.ahp", package="ahp")

#tree structure:
phoneahp <- Load(ahpFile) 
print(phoneahp, filterFun = isNotLeaf)

Calculate(phoneahp)
print(phoneahp, "weight")

Visualize(phoneahp) 

Analyze(phoneahp)
