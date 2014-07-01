abilities <-
function(list){
  len <- length(list$abilities)
  if(len > 0){
    abilities <- data.frame()
    for(i in 1:length(list$abilities)){
      abilities <- rbind(abilities, as.data.frame(list$abilities[[i]]))
    }
    return(abilities)
  }
  else{
    message("That type of data is missing or incomplete for this occupation.")
  }
}
