jobInfo <-
function(list, type = c("jt", "k", "s", "a", "wa", "wc", "ws", "wv", "e", "tool", "tech", "task")){
        dict <- data.frame(arg = c("jt", "k", "s", "a", "wa", "wc", "ws", "wv", "e", "tool", "tech", "task"),
                           full = c("occupation", "knowledge", "skills", "abilities", "work_activities", "work_context", "work_styles", "work_values","education", "tools_technology", "tools_technology", "tasks"),
                           depth = c(2, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 1),
                           secondary = c("sample_of_reported_job_titles", "", "", "", "", "", "", "", "level_required", "tools", "technology", ""))
  key <- dict$full[which(dict$arg == type)]
  depth <- dict$depth[which(dict$arg == type)]
  if(depth == 2){
          second_level <- dict$secondary[which(dict$arg == type)]
          if(length(list[[as.character(key)]][[as.character(second_level)]]) > 0){
                  info <- ldply((lapply(list[[as.character(key)]][[as.character(second_level)]], function(x){t(unlist(x))})))
                  return(info)
          }
          else{
                  message("Warning: This type of data is missing or incomplete for this occupation.")
          }
  } else{
          if(length(list[[key]]) > 0){
                  info <- ldply((lapply(list[[key]], function(x){t(unlist(x))})))
                  return(info)
          }
          else{
                  message("Warning: This type of data is missing or incomplete for this occupation.")
          }
  }
}
