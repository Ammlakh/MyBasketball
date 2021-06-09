#' calculates true shooting percentages
#'
#' @param dataset A dataset
#' 
#'
#' @return A vector that will be added as a column
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#'
#' @export


TS <- function(dataset){
  TSA = dataset$FGA + 0.44 * dataset$FTA
  TS =  dataset$PTS / (2 * TSA)
  return(TS)
}

