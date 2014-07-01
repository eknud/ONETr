relatedOccupations <-
function(list){
  len <- length(list$related_occupations)
  if(len > 0){
    codes <- c()
    titles <- c()
    related_occupations <- data.frame()
    for(i in 1:length(list$related_occupations)){
      codes[i] <- list$related_occupations[[i]][[1]]
      titles[i] <- list$related_occupations[[i]][[2]]
    }
    related_occupations <- data.frame(code=codes,title=titles)
    return(related_occupations)
  }
  else{
    message("That type of data is missing or incomplete for this occupation.")
  }
}
