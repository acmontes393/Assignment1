###How to see the built-in datasets, load them and figure them out###
data()
data("swiss")
?swiss
###How to create a function###
fun_mean <- function(x){
  sum(x) / length(x)
}
###Descrptive Statistics###
hist(swiss$Examination)
mean(swiss$Examination)
mean(swiss$Examination, na.rm = TRUE)
median(swiss$Examination)
#CAUTION: Mode is not a fuction in R - create a bar chart###
devtools::source_url('http://bit.ly/OTWEGS')
plot(MortalityGDP$region, xlab = 'Region')
IQR(swiss$Examination)
boxplot(swiss$Examination, main = '% of Draftees with Highest Mark')
sd_error <- function(x) {
  sd(x) / sqrt(length(x))
}

sd_error(swiss$Examination)
hist(swiss$Education, main = '')
log(swiss$Education) %>% hist(main = "Swiss Education")
plot(log(swiss$Education), swiss$Examination)
cor.test(log(swiss$Education), swiss$Examination)
ggplot2::ggplot(swiss, aes(log(Education), Examination)) +
  geom_point() + geom_smooth() + theme_bw()
#Seminar#
data()
data("USArrests")
?USArrests
hist(USArrests$Murder)
mean(USArrests$Murder)
median(USArrests$Murder)
plot(USArrests$Murder, xlab = '1:50')
summary(USArrests$Murder)
boxplot(USArrests$Murder, main = '# of Murders per State')
#Establish Quantiles#
quantile(USArrests$Murder, c(.20, .80))
q20 <-  quantile(USArrests$Murder, c(.80))
#Create Subsets#
most20v <- subset(USArrests, Murder>q20)
#Use new subset#
mean(most20v$Murder)
#Set Working directory
setwd(\Users\Natalia\Desktop\Master_Hertie\Semester_3\R_codes)
