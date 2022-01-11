#instalacja paczki neuralnet
install.packages('neuralnet')

#uzycie tej paczki
library("neuralnet")

#generowanie treningowych danych wejsciowych
traininginput <-  as.data.frame(runif(50, min=1, max=10))

#funkcja wyjsciowa
trainingoutput <- 1 / sqrt(traininginput)

#polaczenie danych wejsciowych i wyjsciowych
trainingdata <- cbind(traininginput,trainingoutput)
colnames(trainingdata) <- c("Input","Output")

#nauczenie sieci neuronowej
net.price<- neuralnet(Output~Input,trainingdata, hidden=10, threshold=0.01)


print(net.price)
plot(net.price)



