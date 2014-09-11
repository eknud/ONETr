socSearch <-
function(soc){
    # call api and parse xml
    baseURL <- "http://services.onetcenter.org/v1.3/ws/online/occupations/"
    output <- getURL(paste(baseURL,soc,"/summary",sep=""), userpwd=paste(get("creds",envir=cacheEnv)[[1]],":",get("creds",envir=cacheEnv)[[2]], sep=""), httpauth = 1L)
    if(grepl("Authorization Error",output)){
       message("Your API credentials are invalid. Please enter valid credentials using setCreds().")
    }
    else if(grepl("<error>",output)){
       message("A valid O*NET-SOC code is required.")
    }
    else{
      raw <- xmlInternalTreeParse(output)
      rootNode <- xmlRoot(raw)
      list <- xmlToList(rootNode)
      return(list)
    }
}
