ages <- c(18, 24, 26, 20, 22)

mean_of_ages <- mean(ages) # Mean of the ages above
dev_ages <- ages - mean_of_ages # Deviation of ages from the mean
agedev_sqr <- dev_ages * dev_ages # Square of deviation of ages
numerator <- sum(agedev_sqr) # Sum of square deviations
denominator <- length(ages) - 1 # (n-1)
num_over_den <- numerator / denominator # y-bar minus y

standard_deviation <- sqrt(num_over_den) # y bar minus y squared

cat("Standard Deviation is:", standard_deviation)