# a
a <- 12/exp(12)
b <- 2 * a
max(a,b)

# b
help(sqrt)

# c
x <- 80:90
sum(x^2)

# d
??max

#e
setwd("C:/Users/jozek/OneDrive/Studia - semestr 1/Analiza Procesów Uczenia/lab1")
a <- "smartfon Motorola"
getwd()
save(a, file="workspace.RData")
remove(a)
ls()
load("workspace.RData")
ls()

# f
install.packages("gridExtra")
library(gridExtra)
help(package="gridExtra")
setwd("C:/Users/jozek/OneDrive/Studia - semestr 1/Analiza Procesów Uczenia/lab1")
titanicset <- read.csv("titanic.csv")
grid.table(titanicset[seq(1,10),])

#g
g <- seq(400, 320, -8)

#h
a <- c(60:40)
b <- c(40:50)
d <- c(a, b)
show(d)

#i
nazwa <- c("Moto G100", "Moto E20", "Moto G50", "Moto G200", "Moto G60S", "Moto G60", "Moto E7i Power", "Moto E40", "Moto G31", "Defy")
wyswietlacz <- c("6.7\"", "6.52\"", "6.5\"", "6.8\"", "6.8\"", "6.8\"", "6.5\"", "6.5\"", "6.4\"", "6.5\"") 
pamiec_RAM <- c(8, 2, 4, 8, 6, 6, 2, 4, 4, 4)
pamiec_wbudowana <- c(128, 32, 64, 128, 128, 128, 32, 64, 64, 64)
aparat_foto <- c("64 Mpix", "13 Mpix", "48 Mpix", "16 Mpix", "64 Mpix", "108 Mpix", "13 Mpix", "48 Mpix", "50 Mpix", "48 Mpix")
cena <- c(1799, 449, 899, 1999, 1149, 1399, 449, 699, 899, 1199)
liczba_opinii <- c(6, 2, 10, 8, 1, 0, 3, 1, 2, 4)

motorola <- data.frame(nazwa, wyswietlacz, pamiec_RAM, pamiec_wbudowana, aparat_foto, cena, liczba_opinii)
mean(motorola$cena)

#j
add_phone <- data.frame(nazwa = "Moto G31", wyswietlacz = "6.4\"", pamiec_RAM = 4, pamiec_wbudowana = 64, aparat_foto = "50 Mpix", cena = 899, liczba_opinii = 2)
motorola <- rbind(motorola, add_phone)
mean(motorola$cena)

#k
motorola$ocena = c("5", "4.5", "5", "4", "4.5", "0", "3", "4.5", "5", "3.5", "4.5")
motorola[,'ocena'] <- factor(motorola[,'ocena'])
aggregate(motorola$cena, list(motorola$ocena), mean)

#l
add_phone2 <- data.frame(nazwa = "Edge 20 Lite", wyswietlacz = "6.7\"", pamiec_RAM = 8, pamiec_wbudowana = 128, aparat_foto = "108 Mpix", cena = 1699, liczba_opinii = 4, ocena="5")
motorola <- rbind(motorola, add_phone2)

add_phone3 <- data.frame(nazwa = "RAZR", wyswietlacz = "2.7\"", pamiec_RAM = 8, pamiec_wbudowana = 256, aparat_foto = "48 Mpix", cena = 3499, liczba_opinii = 2, ocena="5")
motorola <- rbind(motorola, add_phone3)

add_phone4 <- data.frame(nazwa = "Edge 20 Pro", wyswietlacz = "6.7\"", pamiec_RAM = 12, pamiec_wbudowana = 256, aparat_foto = "108 Mpix", cena = 3299, liczba_opinii = 3, ocena="4.5")
motorola <- rbind(motorola, add_phone4)

add_phone5 <- data.frame(nazwa = "Moto E20 Coastal Blue", wyswietlacz = "6.52\"", pamiec_RAM = 2, pamiec_wbudowana = 32, aparat_foto = "13 Mpix", cena = 449, liczba_opinii = 2, ocena="4.5")
motorola <- rbind(motorola, add_phone5)

install.packages("plotrix")
library(plotrix)
wykres <- table(motorola$ocena)
barplot(wykres, main = "Liczebnoœæ ocen klientów", ylim = c(0, 10), xlab = "Ocena", ylab = "Iloœæ")

#m
percentages <- table(motorola$ocena)/length(motorola$ocena)
pie(percentages)
fan.plot(percentages, labels = names(percentages), main = "Wykres wachlarzowy")

#n
status_opinii_count <- ifelse(motorola$liczba_opinii>100,'wiecej niz 100 opinii', ifelse(motorola$liczba_opinii>=50, '50-100 opinii', ifelse(motorola$liczba_opinii>0, 'mniej 50 opinii', 'nie ma'))) 

motorola['status_opinii'] <- factor(status_opinii_count) 

percentage <-table(motorola$status_opinii)/length(motorola$status_opinii) 

pie(percentage) 

#o
for (i in 1:length(motorola$nazwa))
{ 
  print(paste(motorola$nazwa[i], 'ma ocenê klientów', motorola$ocena[i], ', bo ma liczbê opinii', motorola$liczba_opinii[i])) 
} 

#p
write.csv(motorola,'motorola.csv')
motorola2 = read.csv("motorola.csv")

#Dane pobrane ze strony x-kom.pl