#' Takes a noun and makes it plural
#'
#' @param vec A vector
#' @param n An integer
#' @param reps An integer
#' @return A numerical vecor of means
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#' @import tidyverse
#'
#' @export

many_sample_means <- function(vec, n, reps){
  replicate(reps, sample_mean(vec, n))
}

