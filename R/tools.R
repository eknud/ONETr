tools <-
function(list){
  len <- length(list$tools_technology$tools)
  if(len > 0){
    tools <- data.frame()
    for(i in 1:length(list$tools_technology$tools)){
      tools <- rbind(tools, as.data.frame(list$tools_technology$tools[[i]]$title$text))
    }
    return(tools)
  }
  else{
    print("That type of data is missing or incomplete for this occupation.")
  }
}
