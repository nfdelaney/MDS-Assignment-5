#' Function 3: returns a correlation plot of numeric player statistics in a given year
#'
#' This function allows you to find Jeremy Lin's stats for a given year.
#' @param year
#' @keywords
#' @export
#' @examples
#' bBallCorr(2014)

bBallCorr <- function(x){
  require(dplyr)
  require(corrplot)
  numerics <- nba %>% filter(Year == x) %>% select_if(is.numeric) %>% select(-Year)
  numerics <- na.omit(numerics)
  output <- cor(numerics)
  return(corrplot(output, method = "color", type = "upper",
                  tl.srt = 45, tl.col="black", tl.cex = .5))
}

