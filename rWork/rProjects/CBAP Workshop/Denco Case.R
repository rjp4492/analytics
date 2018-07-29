sales1 = read.csv("denco.csv")
sales1
head(sales1)
summary(sales1)
str(sales1)
sales1$REVENUE = as.numeric(sales1$REVENUE)
sales1$COST = as.numeric(sales1$COST)
sales1$MARGIN = as.numeric(sales1$MARGIN)
unique(sales1$CUSTNAME)
length(unique(sales1$CUSTNAME))
length(unique(sales1$REGION))
df1 = aggregate(sales1$REVENUE, by=list(sales1$CUSTNAME), FUN=sum)
head(df1)
head(df1[order(df1$x, decreasing=TRUE),],5)
df1order=df1[order(df1$x, decreasing=TRUE),]
head(df1order,5)
df2 = aggregate(REVENUE ~ CUSTNAME, data=sales1, FUN=sum)
head(df2)
head(df2[order(df2$REVENUE, decreasing=TRUE),],5)
df3 = aggregate(REVENUE ~ CUSTNAME+REGION, data=sales1, FUN=sum)
head(df3)
head(df3[order(df3$REVENUE, decreasing=TRUE),],5)

list1 = tapply(sales1$REVENUE, sales1$CUSTNAME, FUN=sum)
list1

library(dplyr)

sales1%>%dplyr::filter(MARGIN>1000000)
sales1%>%group_by(CUSTNAME)%>%summarize(REVENUE = sum(REVENUE))%>%arrange(desc(REVENUE))

library(sqldf)
