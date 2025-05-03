
# Function to count values above a threshold
count_above_threshold <- function(x, threshold) {
  sum(x > threshold, na.rm = TRUE)
}


# Count values above 1 in each layer of the stack
above_1 <- calc(evi, fun = function(x) count_above_threshold(x, threshold = 1))
above_1

sum(values(above_1) > 1)
above_1min <- cellStats(above_1, stat = "min", na.rm = TRUE)
above_1min
above_1max <- cellStats(above_1, stat = "max", na.rm = TRUE)
above_1max
