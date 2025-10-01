setwd("C:/Users/USER/Desktop/IT24101808")
getwd()

#i. Generate a random sample of size 25
set.seed(123)         
n <- 25
sample_bake <- rnorm(n, mean = 45, sd = 2)
print("Sample of 25 baking times (minutes):")
print(round(sample_bake, 4))

# ii. Test whether the average baking time is less than 46 minutes
res <- t.test(sample_bake,
              mu = 46,
              alternative = "less",
              conf.level = 0.95)

# Show the test result
print(res)

# Extract key values
cat("\nSample mean:", mean(sample_bake), "\n")
cat("Sample SD:", sd(sample_bake), "\n")
cat("t statistic:", as.numeric(res$statistic), "\n")
cat("Degrees of freedom:", res$parameter, "\n")
cat("One-sided p-value:", res$p.value, "\n")
cat("95% CI (from one-sided test):", res$conf.int, "\n")

