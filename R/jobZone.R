jobZone <-
function(list){
  len <- length(list$job_zone)
  if(len > 0){
    job_zone <- data.frame()
    for(i in 1:length(list$job_zone)){
      job_zone <- rbind(job_zone, as.data.frame(list$job_zone[[i]]))
    }
    return(job_zone)
  }
  else{
    print("That type of data is missing or incomplete for this occupation.")
  }
}
