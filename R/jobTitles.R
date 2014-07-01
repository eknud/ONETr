jobTitles <- function(list){
  len <- length(list$occupation$sample_of_reported_job_titles)
  if(len > 0){
    jobTitles <- data.frame()
    for(i in 1:length(list$occupation$sample_of_reported_job_titles)){
      jobTitles <- rbind(jobTitles, as.data.frame(list$occupation$sample_of_reported_job_titles[[i]]))
    }
    return(jobTitles)
  }
  else{
    message("That type of data is missing or incomplete for this occupation.")
  }
}
