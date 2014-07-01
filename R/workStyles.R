workStyles <-
function(list){
  len <- length(list$work_styles)
  if(len > 0){
    work_styles <- data.frame()
    for(i in 1:length(list$work_styles)){
      work_styles <- rbind(work_styles, as.data.frame(list$work_styles[[i]]))
    }
    return(work_styles)
  }
  else{
    message("That type of data is missing or incomplete for this occupation.")
  }
}
