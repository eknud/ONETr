education <-
function(list){
  len <- length(list$education$level_required$category)
  len2 <- length(list$education$level_required$category$score$text)
  if(len > 1 && len2 > 0){
    names <- c()
    scores <- c()
    education <- data.frame()
    for(i in 1:length(list$education$level_required)){
      names[i] <- list$education$level_required[[i]]$name
      scores[i] <- list$education$level_required[[i]]$score$text
    }
    education <- data.frame(degree=names,percentage_resp=scores)
    return(education)
  }
  else{
    message("That type of data is missing or incomplete for this occupation.")
  }
}
