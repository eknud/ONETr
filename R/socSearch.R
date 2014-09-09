socSearch <-
function(soc){
    # call api and parse xml
    baseURL <- "http://services.onetcenter.org/v1.3/ws/online/occupations/"
    output <- getURL(paste(baseURL,soc,"/summary",sep=""), userpwd=paste(get("creds",envir=cacheEnv)[[1]],":",get("creds",envir=cacheEnv)[[2]], sep=""), httpauth = 1L)
    raw <- xmlInternalTreeParse(output)
    rootNode <- xmlRoot(raw)
    list <- xmlToList(rootNode)
    if(length(list) == 1){
      stop("Error: Check that the correct login credentials are stored with setCreds(). If they are correct, this is either an invalid O*NET-SOC code or the data for this occupation contain an error. Try again or access the information manually online.")
    }
    else{
      return(list)
    }
}
