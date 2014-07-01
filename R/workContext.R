workContext <-
function(list){
  len <- length(list$work_context)
  if(len > 0){
    work_context <- data.frame()
    for(i in 1:length(list$work_context)){
      work_context <- rbind(work_context, as.data.frame(list$work_context[[i]]))
    }
    return(work_context)
  }
  else{
    message("That type of data is missing or incomplete for this occupation.")
  }
}
