library('ggplot2')

heights.weights <- read.csv('01_heights_weights_genders.csv', header = TRUE, sep = ',')

heights.weights <- transform(heights.weights, Male = ifelse(Gender == 'Male', 1, 0))

logit.model <- glm(Male ~ Weight + Height, data = heights.weights, family = binomial(link = 'logit'))

ggplot(heights.weights, aes(y = Weight, x = Height, color = Gender)) +
  geom_point() +
  stat_abline(intercept = - coef(logit.model)[1] / coef(logit.model)[2],
              slope = - coef(logit.model)[3] / coef(logit.model)[2],
              geom = 'abline',
              color = 'black')
ggsave('../../images/logistic_plot.pdf')
