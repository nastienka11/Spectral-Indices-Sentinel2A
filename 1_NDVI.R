B4=raster("M1901_B4.tif")
B5=raster("M1901_B5.tif")


# NDVI
NDVI = (B5-B4)/(B5+B4)

plot(NDVI, main = "Sentinel 2 - NDVI",
     ylab = "Frecuencia", xlab="NDVI")

NDVI[NDVI>1] <- 1; NDVI[NDVI< (-1)] <- -1 #Rescaling to avoid outliers
