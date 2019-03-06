#' Function 1: Jeremy Lin stats
#'
#' This function allows you to find Jeremy Lin's stats for a given year.
#' @param year
#' @keywords
#' @export
#' @examples
#' jeremyLin(2014)

jeremyLin <- function(x){
  require(dplyr)
  output <- nba %>% filter(Player == "Jeremy Lin", Year == x)
  return(output)
}



