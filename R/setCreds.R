cacheEnv <- new.env()

setCreds <- function(user,pass){
  assign("creds",list(user,pass), envir=cacheEnv)
}