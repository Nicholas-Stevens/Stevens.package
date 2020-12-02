#' Calculates the Leaf litter difference across years of collected leaflitter weights(g) 
#'
#' @param Leaf_litter_filtered name of data table (tibble, no default)
#' @param Y2017 year 2017 leaf litter weights (numeric, no default)
#' @param Y2018 year 2018 leaf litter weights (numeric, no default)
#' @param Y2019 year 2019 leaf litter weights (numeric, no default)
#' @return difference between yearly leaf litter weights (numeric)
#' @importFrom assertthat assert_that
#' 
#' @export
#'



leaf_diff_y2017_2018 <- function(data = Leaf_litter_filtered,
                                Y2017 = Leaf_litter_filtered$Y2017,
                                Y2018 = Leaf_litter_filtered$Y2018)
  {assertthat::assert_that(is.numeric(data$Y2017))
   assertthat::assert_that(is.numeric(data$Y2018))    
   leaf_diff_calc <- data %>% mutate(leaf_diff_calc = Y2018 - Y2017)
   return(leaf_diff_calc)}


