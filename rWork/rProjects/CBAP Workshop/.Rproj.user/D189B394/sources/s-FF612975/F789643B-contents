#My first R file

data(women)
plot(women)

#vectors
rollno=c(101,102,103,104,105)
rollno
pie(rollno)
rollno[c(1,3,5)]
sname=c('Akshaya','Dhruv','Ravi','Tadasa','Utsav')
sname
?hist
marks= round(rnorm(5, mean = 60, sd=12),2)
plot(marks)
hist(marks)
plot(density(marks))
spl=c('MA','BA','MA','BA','BA')
set.seed(100)
spl1 = sample(c('MA','BA'),100, replace = T, prob=c(.3,.7))
set.seed(100)
spl2 = sample(c('MA','BA'),100, replace = T, prob=c(.3,.7))
spl = sample(c('MA','BA'),5, replace = T, prob=c(.3,.7))
?remove
remove(spl2)
remove(spl1)
ls
ls()

#dataframe
classdata = data.frame(rollno,sname,marks,spl)
classdata
write.csv(classdata, 'classdata.csv')

str(classdata$sname)

#detach("package:arules")
demo("graphics")

(classdata$sname = as.character(classdata$sname))
(classdata$spl = as.character(classdata$spl))
classdata$grades = grades
(grades = factor(c('A','B','C','A','B'),ordered=T,levels=c('B','A','C')))
summary(classdata)

str

