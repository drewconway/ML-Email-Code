p <- 0.05

N <- 1000000

incomes <- rep(NA, N)

for (i in 1:N)
{
  if (rbinom(1, 1, p) == 1)
  {
    income <- 20000
  }
  else
  {
    income <- rlnorm(1, meanlog = log(40000), sdlog = 0.25)
  }
  incomes[i] <- income
}

pdf('incomes_in_britain.pdf')
ggplot(data.frame(Income = incomes), aes(x = Income, fill = 1)) +
  geom_density() +
  ylab('') +
  xlab('Income in Dollars per Year') +
  opts(title = 'Distribution of Incomes in Society')
dev.off()
