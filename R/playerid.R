#' formats player column to drop id characters
#'
#' @param dataset A dataset
#' @return A numerical vecor of means
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#' @import tidyverse
#'
#' @export

playerid <- function(dataset){
  dataset <- dataset %>%
    mutate(Player = str_replace(Player, "\\\\", " \\\\")) %>%
    mutate(Player = gsub("\\\\\\w+ *", "", Player))
  return(dataset)
}
