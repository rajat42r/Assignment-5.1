#1
states=rownames(USArrests)
library(stringr)
vowels<-c("a","e","i","o","u")
num_vowels<-vector(mode="integer",length = 5)
for(j in seq_along(vowels)){
  num_aux=str_count(tolower(states),vowels[j])
  num_vowels[j]=sum(num_aux)
}
names(num_vowels)=vowels
num_vowels
sort(num_vowels,decreasing = T)

#2
barplot(num_vowels,main="Number og vowels in USA State Names",border=NA,ylim=c(0,80))
