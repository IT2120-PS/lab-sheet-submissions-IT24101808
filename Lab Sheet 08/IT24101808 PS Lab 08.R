setwd("C:/Users/USER/Desktop/IT24101808")
getwd()

data <- read.table("Exercise - LaptopsWeights.txt", header=TRUE)
bag_weights <- data$Weight.kg.

#1
pop_mean <- mean(bag_weights)

pop_sd <- sd(bag_weights) * sqrt((length(bag_weights)-1)/length(bag_weights))

cat("Population Mean =", pop_mean, "\n")
cat("Population SD   =", pop_sd, "\n")


#2
set.seed(123)   # reproducibility

sample_means <- c()
sample_sds <- c()

for (i in 1:25) {
  sample_data <- sample(bag_weights, size = 6, replace = TRUE)
  sample_means[i] <- mean(sample_data)
  sample_sds[i]   <- sd(sample_data)
}

cat("\nSample Means (25):\n")
print(sample_means)

cat("\nSample SDs (25):\n")
print(sample_sds)

#3
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means   <- sd(sample_means)

cat("\nMean of 25 Sample Means =", mean_of_sample_means, "\n")
cat("SD of 25 Sample Means   =", sd_of_sample_means, "\n")


# Relationship

cat("\n--- Relationship ---\n")
cat("Mean of sample means ≈ Population mean (Law of Large Numbers)\n")
cat("SD of sample means ≈ Population SD / sqrt(n) (Central Limit Theorem)\n")
