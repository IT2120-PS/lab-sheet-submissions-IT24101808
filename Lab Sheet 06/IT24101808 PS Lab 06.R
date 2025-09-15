setwd("C:/Users/USER/Desktop/IT24101808")

n1 <- 50
p1 <- 0.85
cat("Q1.i: X ~ Binomial(", n1, ",", p1, ")\n")

prob_at_least_47 <- sum(dbinom(47:50, size = n1, prob = p1))
cat("Q1.ii: P(X >= 47) =", prob_at_least_47, "\n")

# Q2
cat("Q2.i: X = Number of calls received per hour\n")

lambda2 <- 12
cat("Q2.ii: X ~ Poisson(", lambda2, ")\n", sep="")

prob_15_calls <- dpois(15, lambda = lambda2)
cat("Q2.iii: P(X = 15) =", prob_15_calls, "\n")


