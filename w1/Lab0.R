source("http://www.openintro.org/stat/data/present.R")

present

dim(present)

names(present)

present$year

#Question 1: How many variables are 
#included in this data set?: 

#R: D) 63

#Question 2: What command would you use to 
#extract just the counts of girls born? 

#R: B) present$girls 

plot(x = present$year, y = present$girls)
plot(x = present$year, y = present$girls, type = "l")

#Question 3:Is there an apparent trend 
#in the number of girls born over the 
#years? How would you describe it? 

#R. B) There is initially an increase in 
#the number of girls born, which peaks 
#around 1960. After 1960 there is a 
#decrease in the number of girls born, 
#but the number begins to increase again 
#in the early 1970s. Overall the trend 
#is an increase in the number of girls 
#born in the US since the 1940s. 

present$boys + present$girls
plot(present$year, present$boys + present$girls, type = "l")

present$year[which.max(present$boys + present$girls)]

#Question 4:In what year did we see 
#the most total number of births in 
#the U.S.? Note: The most efficient 
#way of solving this question is to 
#use an R function that will tell you 
#which year had the maximum total number 
#of births. You can refer to the help 
#files or the R reference card. This is 
#not a function we used earlier in the 
#lab. Being able to make use of online 
#resources to find out about a function 
#you need is a useful skill, so we're 
#asking you to work on that skill here.

#A) 1961 X
#B) 1960 
#C) 1957 
#D) 1991

plot(present$year, present$boys / (present$boys + present$girls), type = "l")


#Question 5: Now, make a plot of the 
#proportion of boys over time, and based 
#on the plot determine if the following 
#statement is true or false: The proportion
#of boys born in the US has decreased over 
#time. 


#True -> X
#False

present$boys > present$girls

#Question 6:Which statesment is true?
#A) Every year there are more girls born 
#than boys. 
#B) Every year there are more boys born 
#than girls.-> X 
#C) Half of the years there are more 
#boys born, and the other half more girls 
#born.

plot(present$year, present$boys / present$girls, type = "l")
#Question 7:Make a plot that displays 
#the boy-to-girl ratio for every year 
#in the data set. What do you see?

#A) There appears to be no trend in
#the boy-to-girl ratio from 1940 to 2002. 
#B) There is initially an increase in 
#boy-to-girl ratio, which peaks around 1960. 
#After 1960 there is a decrease in the 
#boy-to-girl ratio, but the number begins 
#to increase in the mid 1970s. 
#C) There is initially a decrease in the 
#boy-to-girl ratio, and then an increase 
#between 1960 and 1970, followed by a 
#decrease. -> X
#D) The boy-to-girl ratio has increased 
#over time. 
#E) There is an initial decrease in the 
#boy-to-girl ratio born but this number 
#appears to level around 1960 and remain 
#constant since then.

present$year[which.max(present$boys - present$girls)]


#Question 8: Calculate absolute 
#differences between number of boys and 
#girls born in each year, and determine 
#which year out of the present data had 
#the biggest absolute difference in the 
#number of girls and number of boys born?

#A) 1963 -> X
#B) 1946 
#C) 2002 
#D) 1940
