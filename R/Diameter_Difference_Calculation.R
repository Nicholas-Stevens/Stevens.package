#' Calculates diameter difference from tree species diameters and finds difference between years
#' 
#' @param Diameters name of data table used to calculate diameter difference
#' @param diameter_2017 yearly diameter measurement for 2017 (numeric, no default)
#' @param diameter_2018 yearly diameter measurement for 2018 (numeric, no default)
#' @importFrom assertthat assert_that
#' @importFrom magrittr %>% 
#' @importFrom dplyr mutate
#' 
#' @return differences between yearly diameters (data frame)
#' 
#' @export


diameter_diff_y2017_2018 <- function(data = Diameters,
                                       diameter_2017 = Diameters$diameter_2017,
                                       diameter_2018 = Diameters$diameter_2018){
   {assertthat::assert_that(is.numeric(data$diameter_2017))
    assertthat::assert_that(is.numeric(data$diameter_2018))    
    diameter_diff_calc <- data %>% mutate(diameter_diff_calc = diameter_2018 - diameter_2017)
    return(diameter_diff_calc)}
}
