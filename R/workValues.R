workValues <-
function(list){
  len <- length(list$work_values)
  if(len > 0){
    work_values <- data.frame()
    for(i in 1:length(list$work_values)){
      work_values <- rbind(work_values, as.data.frame(list$work_values[[i]]))
    }
    return(work_values)
  }
  else{
    print("That type of data is missing or incomplete for this occupation.")
  }
}
