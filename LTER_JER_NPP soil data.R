# Load LTER-JER NPP soil pedon data

# load libraries 
library(aqp)
library(soilDB)

# List of NPP pedons 
JER.NPP <- c("04NM013001", "04NM013002", "04NM013003A", "04NM013003B", "04NM013004",
             "04NM013005", "04NM013006", "04NM013007", "04NM013008", "04NM013009", 
             "04NM013010", "04NM013011", "04NM013012", "04NM013013", "04NM013014", 
             "04NM013015")

# Download Soil Data from 
ss <- fetchKSSL(pedon_id = JER.NPP, returnMorphologicData = T, returnGeochemicalData = T)

# Soil Profile Collection
ss$SPC
ss$SPC@site
ss$SPC@horizons

# Morphology data
ss$morph
ss$morph$phcolor
ss$morph$phfrags
ss$morph$phpores
ss$morph$phstructure
ss$morph$rmf

# Geochemical Data
ss$geochem
ss$optical
ss$xrd_thermal


