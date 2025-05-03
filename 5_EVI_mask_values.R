#  Create a raster containing 1 in the cells with EVI greater than 1, and 0 in the other cells
above_1 <- evi > 1


# Create a mask to set as NA the cells with EVI greater than 1 
mask <- raster::mask(s, above_1)
mask


# Calculate other spectral index using the raster resulting from applying the mask
ndvi <- (mask[[2]] - mask[[1]]) / (mask[[2]] + mask[[1]])


evimask <- 2.5 * ((mask[[2]]-mask[[1]]) / (mask[[2]] + 6 * mask[[1]] - 7.5 * mask[[3]] + 1))


hist(evi, main="Histograma de EVI", ylab = "Frecuencia", 
     col="darkolivegreen1", xlab="SAVI")
