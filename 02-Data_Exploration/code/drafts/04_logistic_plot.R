# http://www.amstat.org/publications/jse/v11n2/datasets.heinz.html

measurements <- read.csv('body.dat', header = FALSE, sep = '')

measurements <- measurements[, 23:25]

names(measurements) <- c('Weight', 'Height', 'Male')

measurements$Gender <- ifelse(measurements$Male == 1, 'Male', 'Female')

library('ggplot2')
ggplot(measurements, aes(x = Weight, y = Height, color = Gender)) + geom_point()

logit.model <- glm(Male ~ Height + Weight, data = measurements, family = binomial(link = 'logit'))

invlogit <- function (x) {1 / (1 + exp(-x))}

library('arm')
measurements$Prediction <- as.numeric(invlogit(predict(logit.model)) > 0.5)
nrow(subset(measurements, Male == Prediction)) / nrow(measurements)

# Find constant line so that invlogit == 0.5 everywhere.

# -coef(logit.model)[1] == coef(logit.model)[2] * Height + coef(logit.model)[3] * Weight
# Height = (-coef(logit.model)[1] - coef(logit.model)[3] * Weight) / coef(logit.model)[2]
# Height = -coef(logit.model)[1] / coef(logit.model)[2] - coef(logit.model)[3] / coef(logit.model)[2] * Weight

ggplot(measurements, aes(x = Weight, y = Height, color = Gender)) +
  geom_point() +
  stat_abline(intercept = - coef(logit.model)[1] / coef(logit.model)[2],
        slope = - coef(logit.model)[3] / coef(logit.model)[2],
        geom = 'abline',
        color = 'black')

