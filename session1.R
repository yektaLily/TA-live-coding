#Variables and Data types 

#variable - something to store data in 
a = 1 
b = 2 
c = a + b 
print(c)

#data types:
#numbers 
#integer 
int1 = 1L
typeof(int1)

#double
doub1 = 1.3
typeof(doub1)

doub2 = 1 
typeof(doub2)

#complex numbers 
comp = 1 + 2i 
typeof(comp)

#Boolean - logical 
t = T
typeof(t)

f = FALSE
typeof(f)

#character - strings 
str = 'c'
str2 = "Hello"

typeof(str)
typeof(str2)

#-----------------------------

#some basic operations 
#division 
n1 = 4
n2 = 3 
div1 = n1 / n2 
div1 

#using functions, passing vars as arguments 
sq = sqrt(n1)
sq 

#character operations 
greetings = "Hello, "
name = "Yekta"
message = paste(greetings, name)
message

#logical operations 
n1 < n2 #4 < 3 - F
n2 < n1 #3 < 4 - T
n1 == n2 # 4 == 3 - F

# equal ==
# < , > 
# <= , >= 
# not equal != 

p = T
q = F 
# or | 
p_or_q = p | q 
p_or_q 

# and & 
p_and_q = p & q 
p_and_q

# not ! 
notP = !p 
notP 

# isTRUE(x)
isPTrue = isTRUE(p)
isPTrue

#Function,While, For, IF
#while is necessary for apply 

count <- 1 
counterFunc <- function(upTo){
  while(count < upTo){
    print(count)
    count <- count + 1 
  }
  return("Done.")
}

counterFunc(11)

#for loop and "vectors" (just intro)
#since for loop uses "how many times" you need to go through a sequence of numbers 
#the command for that is:
sequence_nums = seq(1,10) 
#or you can do:
evenly_spaced = seq(0, 1, length=10) 

#the short hand for this is: 
vec = 1:10 
vec

for(i in 1:5){
  print(paste("Number: ",i))
}

#check where number falls 

#generate random number
rnum = rnorm(1) #default is standard
rnum 

#remove your result 
rm(res)

checkPlace <- function(n){
  if(n > 1){
    result <- "Value greater than 1"
  } else if(n > -1){
    result <- "Value between -1 and 1"
  } else {
    result <- "Value less than -1"
  }
  
  return(result)
}

res = checkPlace(rnum)
res

#a look ahead 
#vectors

members = c("Jiu","Sua","Siyeon","Handong","Yoohyeon","Dami","Gahyeon")
unnie_line = c("Jiu","Sua","Siyeon")
ages = c(28,28,27,26,25,25,23)

introduceMyFaves <- function(names,age){
  for(i in 1:length(names)){
    print(paste(names[i],"is ",age[i]," years old."))
  }
}

introduceMyFaves(members,ages)
introduceMyFaves(unnie_line,ages)

#some functions on vectors 
is.numeric(members)
is.character(members)
is.integer(ages)
is.double(ages)

#very basic plotting 
#we usually work with ggplot, but that involves installing packages that we'll cover next week. It's nothing scary. 
#let's just work with a simple plot 
x = rnorm(100)
y = rnorm(100)
#save the file to jpeg 
jpeg("NewPlot.jpeg")
plot(x, y, xlab = "x axis", ylab = "y axis", main = "simple plot x vs y", col = "red")
dev.off() #we're done 


