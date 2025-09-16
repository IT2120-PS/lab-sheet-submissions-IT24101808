setwd("C:/Users/USER/Desktop/IT24101808")

# Q1
a <- 0   
b <- 40 
prob_train <- (25 - 10) / (b - a)
cat("Q1: Probability =", prob_train, "\n")


# Q2
lambda <- 1/3
prob_update <- pexp(2, rate = lambda)   
cat("Q2: Probability update <= 2 hours =", prob_update, "\n")


# Q3.i
mu <- 100
sigma <- 15
prob_iq_above_130 <- 1 - pnorm(130, mean = mu, sd = sigma)
cat("Q3.i: Probability IQ > 130 =", prob_iq_above_130, "\n")


# Q3.ii
iq_95 <- qnorm(0.95, mean = mu, sd = sigma)
cat("Q3.ii: 95th Percentile IQ Score =", iq_95, "\n")
