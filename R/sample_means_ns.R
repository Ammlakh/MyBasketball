#' 
#'
#' @param vec A numeric vector
#' @param reps An integer
#' @param n A integer vector for sample size
#' 
#'
#' @return A dataset with means and sample size
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#' @import xfun
#' @import english
#' @import tidyverse
#' @export

sample_means_ns <- function(vec, reps, ns){
  means <- map(ns, ~many_sample_means(vec, .x, reps))
  sample_mean = unlist(means)
  n = rep(ns, each = reps)
  df <- data.frame(sample_mean, n)
  names(df) <- c("sample_mean", "n")
  return(df)
}


