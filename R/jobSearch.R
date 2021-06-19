jobSearch <- function(input_raw, type = c("keyword", "soc")){
    input <- gsub(" ", "%20", input_raw)
    if(type == "soc"){
            # call api and parse xml
            baseURL <- "https://services.onetcenter.org/ws/online/occupations/"
            output <- getURL(paste(baseURL,input,"/details?display=long",sep=""), userpwd=paste(get("creds",envir=cacheEnv)[[1]],":",get("creds",envir=cacheEnv)[[2]], sep=""), httpauth = 1L)
            if(grepl("Authorization Error",output)){
                    message("Error: Your API credentials are invalid. Please enter valid HTTPS credentials using setCreds().")
            }
            else if(grepl("<error>",output)){
                    message("Error: A valid O*NET-SOC code is required.")
            }
            else{
                    raw <- xmlInternalTreeParse(output)
                    rootNode <- xmlRoot(raw)
                    list <- xmlToList(rootNode)
                    return(list)
            }
    }
   if(type == "keyword"){
       if(is.na(input)){ return(data.frame(code = NA, title = NA)) } else {
           output <- getURL(paste("https://services.onetcenter.org/ws/mnm/search?keyword=",input,sep=""), userpwd=paste(get("creds",envir=cacheEnv)[[1]],":",get("creds",envir=cacheEnv)[[2]], sep=""), httpauth = 1L)
           if(grepl("Authorization Error",output)){
                   message("Your API credentials are invalid. Please enter valid HTTPS credentials using setCreds().")
           }
           else if(grepl('total="0"',output)){
                   message("Your keyword returned no results. Please try another keyword or occupational title.")
           }
           else{
                   output <- xmlParse(output)
                   keyOutput <- xmlToDataFrame(nodes = getNodeSet(output, "//career"))
                   message("Find a SOC code below and search again using type = 'soc' to pull job data.")
                   return(keyOutput[,1:2])
           }
       }
   }
   if(type != "keyword" && type != "soc"){
           message("Invalid search type. Please indicate whether your search is is a 'keyword' search or a 'soc' search.")
   }
}
