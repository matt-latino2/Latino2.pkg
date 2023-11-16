#' Removes NAs from hindfoot length column
#' 
#' Use hindfoot length column from surveys dataset
#' Returns hindfoot length data complete without nas
#' 
#' @param hindfoot_length Hindfoot length of rodents
#' @return returns hindfoot length of rodents in survey without NAs
#' 
#' @export




remove_nas <- function(surveys, hindfoot_length){
  rodents <- surveys %>% 
    na.omit(surveys) %>% 
    select(hindfoot_length)
  if(is.numeric(surveys$hindfoot_length) == TRUE){
    return(rodents)
  }else{
    print("error")
 }
}