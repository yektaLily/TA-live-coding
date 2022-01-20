#we want this exact sequence: Red, White, Blue
success_func <- function(x){
  target_seq <- c('red','white','blue')
  success <- c()
  
  find_red <- which(x == target_seq[1]) 
  #red is in which position of x? 
  #could be more than 1
  find_red
  
  for(i in 1:length(find_red)){
    #length(find_red): how many times red shows up
    #white should be 1 after red
    find_white <- x[find_red[i] + 1] == target_seq[2]
    #blue should be 2 after red 
    find_blue <- x[find_red[i] + 2] == target_seq[3]
    #success is all the times white and blue are in their right sequence
    success[i] <- sum(find_white, find_blue)
    print(success)
  }
  
  
  #total number of times this happenes 
  #is 
  total_sucess <- sum(success == 2, na.rm=F)
  
  return(total_sucess)
  
}

success_func(c('red','white','blue','red','white','blue','blue','red'))








