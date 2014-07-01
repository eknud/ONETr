occupation <-
function(list){
  len <- length(list$occupation)
  if(len > 0){
    occupation <- data.frame()
    for(i in 1:3){
      occupation <- data.frame(code=list$occupation[[1]], title=list$occupation[[2]], description=list$occupation[[4]])
    }
    return(occupation)
  }
  else{
    message("That type of data is missing or incomplete for this occupation.")
  }
}
