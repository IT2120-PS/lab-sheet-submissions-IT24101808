setwd("C:/Users/USER/Desktop/IT24101808")
getwd()

#i
# H0: All snack types are equally likely.
# H1: All snack types are not equally likely.

#ii
# Observed frequencies
observed <- c(120, 95, 85, 100)

# Expected frequencies (equal probability)
# Total = 120 + 95 + 85 + 100 = 400
# Expected for each = 400 / 4 = 100
expected <- c(100, 100, 100, 100)

# Perform Chi-Square Goodness of Fit Test
chisq_test <- chisq.test(observed, p = c(0.25, 0.25, 0.25, 0.25))

# Display the test result
chisq_test

#iii

# Print p-value
chisq_test$p.value

# Decision rule:
if (chisq_test$p.value < 0.05) {
  print("Reject the null hypothesis: Snack choices are not equally likely.")
} else {
  print("Fail to reject the null hypothesis: Snack choices are equally likely.")
}

