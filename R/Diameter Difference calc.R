#' Calculates diameter difference from tree species diameters and finds difference between years
#' 
#' @param Diameters_2019_ name of data table used to calculate basil area
#' @param diameter_2017 yearly diameter measurement for 2017 (numeric, no default)
#' @param diameter_2018 yearly diameter measurement for 2018 (numeric, no default)
#' @param diameter_2019 yearly diameter measurement for 2019 (numeric, no default)
#' @importFrom assertthat assert_that
#' @return differences between yearly diameters 
#' 
#' @export
#' 
#' code:
#' @example
#' 
diameter_diff_y2017_2018 <- function(data = Diameters,
                                       diameter_2017 = Diameters$diameter_2017,
                                       diameter_2018 = Diameters$diameter_2018)
   {assertthat::assert_that(is.numeric(data$diameter_2017))
    assertthat::assert_that(is.numeric(data$diameter_2018))    
    diameter_diff_calc <- data %>% mutate(diameter_diff_calc = diameter_2018 - diameter_2017)
    return(diameter_diff_calc)}

diameter_diff_y2017_2018(Diameters, diameter_2017, diameter_2018)