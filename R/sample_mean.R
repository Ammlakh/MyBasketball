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


sample_mean <- function(vec, n){
  values <- sample(vec, n, replace = TRUE)
  mean(values)
}

