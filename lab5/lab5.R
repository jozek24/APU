library(MASS)

require(C50)

data("Melanoma")

head(Melanoma)

str(Melanoma)

Melanoma[,'ulcer'] <- factor(Melanoma[,'ulcer'])

str(Melanoma)

table(Melanoma$ulcer)

m1 <- C5.0(Melanoma[1:205,-7],Melanoma[1:205,7])

summary(m1)

plot(m1)