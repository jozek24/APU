install.packages("C50")

require(C50)

motorola <- read.csv("C:/Users/jozek/OneDrive/Studia - semestr 1/Analiza Procesów Uczenia/apu/apu/lab4/motorola.csv")

data <- motorola[-c(1,7,10)]

str(data)

data[ ,'pamiec_RAM'] <- factor(data[ ,'pamiec_RAM'])

data[0:6]

m1 <- C5.0 (data[0:6],factor(data$pamiec_RAM))

summary(m1)

plot(m1)

