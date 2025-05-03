
B2=raster("M1901_B2.tif")
B5=raster("M1901_B5.tif")
B8=raster("M1901_B8.tif")


# EVI
evi <- 2.5 * ((B8-B4) / (B8 + 6 * B4 - 7.5 * B2) + 1)
evi
summary(evi)


# Cell stats
evi_mean <- cellStats(evi, stat = "mean", na.rm = TRUE)
evi_mean


# Rescaled
evi_rescaled <- (evi - evi_min) / (evi_max - evi_min) * 2 - 1
evi_rescaled
plot(evi_rescaled)
summary(evi_rescaled)


# EVI from stack
evi <- 2.5 * ((s[[1]]-s[[2]]) / (s[[1]] + 6 * s[[2]] - 7.5 * s[[3]] + 1))
evi


