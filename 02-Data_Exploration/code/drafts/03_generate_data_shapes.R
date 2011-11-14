N <- 1000000

normal.data <- rnorm(N, 0, 1)
ggplot(data.frame(X = normal.data), aes(x = X, fill = 1)) + geom_density()

cauchy.data <- rcauchy(N, 0, 1)
ggplot(data.frame(X = cauchy.data), aes(x = X, fill = 1)) + geom_density()

# Normal
x <- seq(-3, 3, by = 0.01)
ggplot(data.frame(X = x, Y = dnorm(x, 0, 1)), aes(x = X, y = Y)) + geom_line()

# Cauchy
x <- seq(-3, 3, by = 0.01)
ggplot(data.frame(X = x, Y = dcauchy(x, 0, 1)), aes(x = X, y = Y)) + geom_line()

# Both Normal and Cauchy at once.
M <- length(x)

comparison.data <- data.frame(X = rep(x, 2),
                              Y = c(dnorm(x, 0, 1),
                                    dcauchy(x, 0, 1)),
                              Shape = c(rep('Normal', M), rep('Cauchy', M)))
ggplot(comparison.data, aes(x = X, y = Y, color = Shape)) + geom_line()

# Gamma
x <- seq(0, 10, by = 0.01)
ggplot(data.frame(X = x, Y = dgamma(x, 2, 1)), aes(x = X, y = Y)) + geom_line()

# Exponential
x <- seq(0, 10, by = 0.01)
ggplot(data.frame(X = x, Y = dexp(x, 1)), aes(x = X, y = Y)) + geom_line()

# Normal Mixture Model
x <- seq(0, 10, by = 0.01)
ggplot(data.frame(X = x, Y = 0.3 * dnorm(x, 2, 1) + 0.7 * dnorm(x, 5, 1)), aes(x = X, y = Y)) + geom_line()
