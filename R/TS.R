#' Puts the various parts of speech together into a full phrase.
#'
#' @param vec A vector
#' @param n An integer
#' 
#'
#' @return A number representing mean
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

