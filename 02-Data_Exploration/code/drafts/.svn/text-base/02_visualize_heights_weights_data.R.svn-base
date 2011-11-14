library('ggplot2')

heights.weights <- read.csv('01_heights_weights_genders.csv', header = TRUE, sep = ',')

ggplot(heights.weights, aes(x = Height, fill = Gender)) + geom_density()
ggplot(heights.weights, aes(x = Weight, fill = Gender)) + geom_density()
ggplot(heights.weights, aes(x = Height, y = Weight)) + geom_point(aes(color = Gender, alpha=0.25)) +
    scale_alpha(legend=FALSE)+scale_color_manual(values=c("Male"="black", "Female"="gray"))+theme_bw()
ggsave(filename='../../images/heights_weights_scatterplot_with_genders.pdf')

heights.weights <- transform(heights.weights, Male = ifelse(Gender == 'Male', 1, 0))
logit.model <- glm(Male ~  Weight + Height, data = heights.weights, family = binomial(link = 'logit'))

invlogit <- function (z) {return(1 / (1 + exp(-z)))}
heights.weights <- transform(heights.weights, Prediction = as.numeric(invlogit(predict(logit.model)) > 0.5))
nrow(subset(heights.weights, Male == Prediction)) / nrow(heights.weights)

# Find constant line so that invlogit == 0.5 everywhere.

# -coef(logit.model)[1] == coef(logit.model)[2] * Height + coef(logit.model)[3] * Weight
# Height = (-coef(logit.model)[1] - coef(logit.model)[3] * Weight) / coef(logit.model)[2]
# Height = -coef(logit.model)[1] / coef(logit.model)[2] - coef(logit.model)[3] / coef(logit.model)[2] * Weight

ggplot(heights.weights, aes(x = Height, y = Weight)) + geom_point(aes(color = Gender, alpha=0.25)) + 
  scale_alpha(legend=FALSE)+scale_color_manual(values=c("Male"="black", "Female"="gray"))+theme_bw() +
  stat_abline(intercept = - coef(logit.model)[1] / coef(logit.model)[2],
        slope = - coef(logit.model)[3] / coef(logit.model)[2],
        geom = 'abline',
        color = 'black')
ggsave(filename='../../images/logistic_plot.pdf')
