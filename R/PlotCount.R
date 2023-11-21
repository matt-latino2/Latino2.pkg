#' Calculate the number of rodents per plot type excluding nas
#' 
#' use plot type column from dataset
#' returns number of rodents present at each plot
#' 
#' @param plot_type Indicates which plot used by rodents
#' @return number of rodents found at each plot type
#' 
#' @export


plot_count_project <- function(surveys), plot_type){
plot_count <- surveys %>% 
na.omit() %>% 
count(plot_type) %>% 
return(plot_count)
}