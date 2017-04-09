simIndex <- function(list1, list2, type = c("jt", "k", "s", "a", "wa", "wc", "ws", "wv", "e", "tool", "tech", "task"), index=c("sd","ji","all")){
  job1 <- jobInfo(list1, type)
  job2 <- jobInfo(list2, type)
  if(".attrs.id" %in% names(job1) & ".attrs.id" %in% names(job2)){
      if(index == "sd"){
        sd <- 2*length(intersect(job1$.attrs.id,job2$.attrs.id))/(length(unique(job1$.attrs.id))+length(unique(job2$.attrs.id))) # Sorensen-Dice index
        list("Sorensen-Dice index"=round(sd,2))
      }
      
      else if(index == "ji"){
        ji <- length(intersect(job1$.attrs.id,job2$.attrs.id))/length(union(job1$.attrs.id,job2$.attrs.id)) # Jaccard index
        list("Jaccard index"=round(ji,2))
      }
      
      else{
        sd <- 2*length(intersect(job1$.attrs.id,job2$.attrs.id))/(length(unique(job1$.attrs.id))+length(unique(job2$.attrs.id))) # Sorensen-Dice index
        ji <- length(intersect(job1$.attrs.id,job2$.attrs.id))/length(union(job1$.attrs.id,job2$.attrs.id)) # Jaccard index
        print(list("Sorensen-Dice index"=round(sd,2),"Jaccard index"=round(ji,2))) # print both in a list
      }
  }
  else{
   message("This function cannot yet handle this job data type. Please try another.")
  }
}