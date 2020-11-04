library(readr)
palladino<-read.csv("Downloads/palladino.csv")
View(palladino)
attach(palladino)
mytable <- table(Independent,undecided)
mytable

t.test(palladino$independent[palladino$undecided==0],palladino$independent[palladino$undecided==1])
model<-lm(independent~undecided, data=palladino)
summary(model)

t.test(independent~undecided)
t.test(Female~undecided)
t.test(white~undecided)
t.test(black~undecided)
t.test(strong~undecided)
t.test(nativeam~undecided)
t.test(latinx~undecided)
t.test(asian~undecided)
t.test(disabled~undecided)

sapply(palladino, mean, na.rm=TRUE) 
table(lauren)
mean(Female, trim = 0, na.rm = TRUE)
sum(Female, na.rm = TRUE)

mean(independent, trim = 0, na.rm = TRUE)
sum(independent, na.rm = TRUE)

mean(strong, trim = 0, na.rm = TRUE)
sum(strong, na.rm = TRUE)

mean(white, trim = 0, na.rm = TRUE)
sum(white, na.rm = TRUE)

mean(black, trim = 0, na.rm = TRUE)
sum(black, na.rm = TRUE)

mean(nativeam, trim = 0, na.rm = TRUE)
sum(nativeam, na.rm = TRUE)

mean(asian, trim = 0, na.rm = TRUE)
sum(asian, na.rm = TRUE)

mean(latinx, trim = 0, na.rm = TRUE)
sum(latinx, na.rm = TRUE)

mean(other, trim = 0, na.rm = TRUE)
sum(other, na.rm = TRUE)

mean(disabled, trim = 0, na.rm = TRUE)
sum(disabled, na.rm = TRUE)

#independent: 1=nonpartisan, 0=hasparty id
#dependent: 1=undecided, 0=selects a/b
