socSearch <-
function(soc){
    # call api and parse xml
    baseURL <- "http://services.onetcenter.org/v1.2/ws/online/occupations/"
    output <- getURL(paste(baseURL,soc,"/summary",sep=""), userpwd=paste(creds[[1]],":",creds[[2]], sep=""), httpauth = 1L)
    raw <- xmlInternalTreeParse(output)
    rootNode <- xmlRoot(raw)
    list <- xmlToList(rootNode)
    if(length(list) == 1){
      stop("The data for this occupation are not in proper format. Package functions will not operate correctly.")
    }
    else{
      return(list)
    }
}
