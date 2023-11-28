#' Calculates and summarizes the standard deviation and mean of weight by species id
#' 
#' Use weight column from surveys dataset and group by species id
#' Returns hindfoot length and weight as statistical values together from rodents surveys dataset
#' 
#' @param weight Weight of rodents
#' @param species_id Identification of rodents by species type
#' @return returns the summary of the weight column through standard deviation and mean by species id
#' 
#' @export


stddev_project <- function(surveys, species_id, weight){
  weight_sd <- surveys %>% 
    na.omit() %>% 
    group_by(species_id) %>% 
    summarize(mean = mean(weight), standard_deviation = sd(weight))
  return(weight_sd)
}