knowledge <-
function(list){
  len <- length(list$knowledge)
  if(len > 0){
    knowledge <- data.frame()
    for(i in 1:length(list$knowledge)){
      knowledge <- rbind(knowledge, as.data.frame(list$knowledge[[i]]))
    }
    return(knowledge)
  }
  else{
    print("That type of data is missing or incomplete for this occupation.")
  }
}
