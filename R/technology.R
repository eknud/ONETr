technology <-
function(list){
  len <- length(list$tools_technology$technology)
  if(len > 0){
    technology <- data.frame()
    for(i in 1:length(list$tools_technology$technology)){
      technology <- rbind(technology, as.data.frame(list$tools_technology$technology[[i]]$title$text))
    }
    return(technology)
  }
  else{
    print("That type of data is missing or incomplete for this occupation.")
  }
}
