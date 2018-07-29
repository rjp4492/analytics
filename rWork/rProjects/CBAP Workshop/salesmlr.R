df4 = read.csv('salesmlr.csv')
head(df4)
remove(df4$X)
str(df4)
omni=data.frame(df4$Sales,df4$Price,df4$Promotion)
head(omni)
mlrmodel1 = lm(formula = omni$df4.Sales ~ omni$df4.Price + omni$df4.Promotion )
summary(mlrmodel1)

ndata1 = data.frame(price = c(60,70), promotion = c(300,400))
predict(mlrmodel1, newdata = ndata1)

install.packages("ISLR")
library(ISLR)
install.packages("rattle")
y
