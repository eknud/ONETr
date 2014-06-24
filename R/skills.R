skills <-
function(list){
  len <- length(list$skills)
  if(len > 0){
    skills <- data.frame()
    for(i in 1:length(list$skills)){
      skills <- rbind(skills, as.data.frame(list$skills[[i]]))
    }
    return(skills)
  }
  else{
    print("That type of data is missing or incomplete for this occupation.")
  }
}
