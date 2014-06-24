interests <-
function(list){
  len <- length(list$interests)
  if(len > 0){
    interests <- data.frame()
    names <- c()
    descs <- c()
    for(i in 2:length(list$interests)){
      if(length(list$interests[[i]][[2]]) > 0){
        names[i-1] <- list$interests[[i]][[1]]
        descs[i-1] <- list$interests[[i]][[2]]
        interests <- data.frame(name=names,description=descs)
      }
    }
    return(interests)
  }
  else{
    print("That type of data is missing or incomplete for this occupation.")
  }
}
