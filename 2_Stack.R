b5_mean <- cellStats(b5, stat = "mean", na.rm = TRUE)
b5_mean

b4_mean <- cellStats(b4, stat = "mean", na.rm = TRUE)
b4_mean

b2_mean <- cellStats(b2, stat = "mean", na.rm = TRUE)
b2_mean


# Create stack
s <- stack(b5, b4, b2)
scaled_s <- scale(s)
