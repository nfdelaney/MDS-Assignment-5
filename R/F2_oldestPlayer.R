#' Function 2: returns oldest player in the NBA in a given year
#'
#' This function allows you to find Jeremy Lin's stats for a given year.
#' @param year
#' @keywords
#' @export
#' @examples
#' oldestPlayer(2014)

oldestPlayer <- function(x){
  require(dplyr)
  output <- nba %>% filter(Year == x) %>% summarise("Max Age" = max(Age))
  return(output)
}

