#' Determines the relationship between the hindfoot_length and weight variables by sex concurrently
#' 
#' Use hindfoot length and weight column from surveys dataset
#' Returns hindfoot length and weight as statistical values together from rodents surveys dataset
#' 
#' @param hindfoot_length Hindfoot length of rodents
#' @param sex Sex of rodents
#' @param weight Weight of rodents
#' @return returns hindfoot length and weight as statistical values that determine what effect the independent variable has on the depenedent variable
#' 
#' @export


manova_project <- function(surveys, weight, sex, hindfoot_length){
manova_model <- manova(cbind(weight, hindfoot_length) ~ sex, surveys)
manova_model
summary(manova_model)
return(manova_model)
}
