tasks <-
function(list){
  len <- length(list$tasks)
  if(len > 0){
    tasks <- data.frame()
    for(i in 1:length(list$tasks)){
      tasks <- rbind(tasks, as.data.frame(list$tasks[[i]]))
    }
    return(tasks)
  }
  else{
    message("That type of data is missing or incomplete for this occupation.")
  }
}
