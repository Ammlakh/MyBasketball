#' 
#'
#' @param df a dataset

#' 
#'
#' @return A vector to be added as column to df
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#' @import xfun
#' @import english
#' @import tidyverse
#' @export

GameScore <- function(df){
   GameScore = df$PTS + 0.4 * df$FG - 0.7 * df$FGA - 0.4*(df$FTA - df$FT) + 0.7 * df$ORB + 0.3 * df$DRB + df$STL + 0.7 * df$AST + 0.7 * df$BLK - 0.4 * df$PF - df$TOV
   return(GameScore)
}


