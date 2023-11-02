#' Graph relationship between sex and hindfoot length
#' 
#' Use sex and hindfoot length from surveys dataset
#' Returns graph plot for sex versus hindfoot length
#' 
#' @param sex Sex of rodents
#' @param hindfoot_length Hindfoot length of rodents
#' @return returns graph plot between sex and hindfoot length
#' 
#' @export




graphplot_project <- function(data, sex, hindfoot_length){
  gpp <- ggplot(data = surveys, mapping = aes(x = sex, y = hindfoot_length)) + geom_col() 
  return(gpp)
}