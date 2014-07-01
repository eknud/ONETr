workActivities <-
function(list){
  len <- length(list$work_activities)
  if(len > 0){
    work_activities <- data.frame()
    for(i in 1:length(list$work_activities)){
      work_activities <- rbind(work_activities, as.data.frame(list$work_activities[[i]]))
    }
    return(work_activities)
  }
  else{
    message("That type of data is missing or incomplete for this occupation.")
  }
}
