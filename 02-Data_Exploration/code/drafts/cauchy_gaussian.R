set.seed(1)

x <- seq(-3, 3, 0.1)
y <- dnorm(x, 0, 1)
z <- dcauchy(x, 0, 1)

df <- data.frame(X = c(x, x), Distribution = c(rep('Normal', length(x)), rep('Cauchy', length(x))), Density = c(y, z))
ggplot(df, aes(x = X, y = Density, linetype = Distribution, group = Distribution)) +
  geom_line()
ggsave('images/cauchy_gaussian.pdf')

ggplot(df, aes(x = X, y = Density, linetype = Distribution, group = Distribution)) +
  geom_line() +
  facet_grid(Distribution ~ .)
ggsave('images/cauchy_gaussian_faceted.pdf')
