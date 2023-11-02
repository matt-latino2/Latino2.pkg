#' Calculate the density of a shrub
#' 
#' use the length width and height of an object to calculate its density
#' returns density as a floating point number
#' 
#' @param length length of the object
#' @param width width of the object
#' @param height height of the object
#' @return density The density of the object (numeric)
#' 
#' @export



est_shrub_density <- function(height, length, width){
  volume <- calc_shrub_vol(height, length, width)
  mass <- est_shrub_mass(volume)
  density <- mass/volume
  return(density)
}