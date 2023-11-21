#' Graph relationship between sex and hindfoot length
#' 
#' use sex and hindfoot length from surveys dataset to determine relationship
#' Returns graphplot for sex versus hindfoot length
#' 
#' @param sex Sex of rodents
#' @param hindfoot_length Hindfoot length of rodents
#' @return Returns gpp as graph plot between sex and hindfoot length
#' 
#' @export





graphplot_project <- function(data, sex, hindfoot_length){
  gpp <- ggplot(data = surveys, mapping = aes(x = sex, y = hindfoot_length)) + geom_col() 
  return(gpp)
}